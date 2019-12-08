///图片下载对话框

import 'dart:io';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageDownloadWidget extends StatefulWidget {
  String imageUrl;

  ImageDownloadWidget(this.imageUrl);

  @override
  _ImageDownloadWidgetState createState() {
    return _ImageDownloadWidgetState();
  }
}

class _ImageDownloadWidgetState extends State<ImageDownloadWidget> {
  String _message = "";
  String _path = "";
  String _size = "";
  String _mimeType = "";
  File _imageFile;
  int _progress = 0;

  @override
  void initState() {
    super.initState();
    PermissionHandler().requestPermissions(<PermissionGroup>[
      PermissionGroup.storage, // 添加文件存储权限
    ]);
    ImageDownloader.callback(onProgressUpdate: (String imageId, int progress) {
      setState(() {
        _progress = progress;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _progress > 0 ? Container() : Text("您确定要下载该图片吗?"),
        _progress > 0 && _progress < 100 ? Text("正在下载") : Container(),
        _progress == 0 || _progress == 100
            ? Container()
            : Container(
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                  value: _progress / 100,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
                padding: EdgeInsets.only(top: 20.0),
              ),
        Text(_message),
        _path == ""
            ? Container()
            : Builder(
                builder: (context) => FlatButton.icon(
                  icon: Icon(Icons.folder_open),
                  label: Text("打开"),
                  onPressed: () async {
                    await ImageDownloader.open(_path).catchError((error) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text((error as PlatformException).message),
                      ));
                    });
                  },
                ),
              ),
        _progress == 0 || _progress == 100
            ? Container()
            : Builder(
                builder: (context) => FlatButton.icon(
                  icon: Icon(Icons.cancel),
                  label: Text("停止"),
                  onPressed: () {
                    ImageDownloader.cancel();
                    Future.delayed(new Duration(milliseconds: 300), () {
                      return "停止下载";
                    }).then((data) {
                      print("stop停止");
                      setState(() {
                        _progress = 0;
                      });
                    });
                  },
                ),
              ),
        _progress > 0
            ? Container()
            : FlatButton.icon(
                icon: Icon(Icons.file_download),
                label: Text("下载"),
                onPressed: () {
                  _downloadImage(widget.imageUrl);
                },
              ),
      ],
    );
  }

  Future<void> _downloadImage(String url,
      {AndroidDestinationType destination, bool whenError = false}) async {
    String fileName;
    String path;
    int size;
    String mimeType;
    try {
      String imageId;

      if (whenError) {
        imageId = await ImageDownloader.downloadImage(url).catchError((error) {
          if (error is PlatformException) {
            var path = "";
            if (error.code == "404") {
              print("Not Found Error.");
            } else if (error.code == "unsupported_file") {
              print("UnSupported FIle Error.");
              path = error.details["unsupported_file_path"];
            }
          }

          print(error);
        }).timeout(Duration(seconds: 10), onTimeout: () {
          print("timeout");
          return;
        });
      } else {
        if (destination == null) {
          imageId = await ImageDownloader.downloadImage(url);
        } else {
          imageId = await ImageDownloader.downloadImage(
            url,
            destination: destination,
          );
        }
      }

      if (imageId == null) {
        return;
      }
      fileName = await ImageDownloader.findName(imageId);
      path = await ImageDownloader.findPath(imageId);
      size = await ImageDownloader.findByteSize(imageId);
      mimeType = await ImageDownloader.findMimeType(imageId);
    } on PlatformException catch (error) {
      setState(() {
        _message = error.message;
      });
      return;
    }

    if (!mounted) return;

    setState(() {
      var location = Platform.isAndroid ? "图库" : "照片";
      _message = '已成功将"$fileName"保存在 $location中.\n';
      _size = '大小:     $size';
      _mimeType = 'mimeType: $mimeType';
      _path = path;

      if (!_mimeType.contains("video")) {
        _imageFile = File(path);
      }
    });
  }
}

class ImageDownloadDialog extends AlertDialog {
  String imageUrl;

  ImageDownloadDialog(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: <Widget>[
        AppBar(
          elevation: 0,
          title: Text("预览"),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.file_download,
              ),
              onPressed: () {
                showDialog<bool>(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("提示"),
                      content: ImageDownloadWidget(imageUrl),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("取消"),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
        Expanded(
          child: LayoutBuilder(builder: (_, c) {
            return ExtendedImage.network(
              imageUrl,
              fit: BoxFit.contain,
              mode: ExtendedImageMode.gesture,
              initGestureConfigHandler: (state) {
                double initialScale = 1.0;
                return GestureConfig(
                  minScale: 0.9,
                  animationMinScale: 0.7,
                  maxScale: 4.0,
                  animationMaxScale: 4.5,
                  speed: 1.0,
                  inertialSpeed: 100.0,
                  initialScale: initialScale,
                  inPageView: false,
                  initialAlignment: InitialAlignment.center,
                );
              },
              loadStateChanged: (ExtendedImageState state) {
                switch (state.extendedImageLoadState) {
                  case LoadState.loading:
                    return Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey[200],
                        valueColor: AlwaysStoppedAnimation(Colors.blue),
                      ),
                    );
                    break;
                  case LoadState.completed:
                    return state.completedWidget;
                    break;
                  case LoadState.failed:
                    state.imageProvider.evict();
                    return Container(
                      child: InkWell(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.error,
                              size: 30.0,
                            ),
                            Text("图片加载失败，点击重试"),
                          ],
                        ),
                        onTap: () {
                          state.reLoadImage();
                        },
                      ),
                      padding: EdgeInsets.all(10.0),
                    );
                    break;
                }
                return Container();
              },
            );
          }),
        ),
      ]),
    );
  }
}

///封装一个showGeneralDialog方法
///显示下载图片对话框
Future<T> showImageDownloadDialog<T>({
  @required BuildContext context,
  bool barrierDismissible = false,
  String imageUrl,
}) {
  final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
  final WidgetBuilder builder = (BuildContext context) {
    return ImageDownloadDialog(imageUrl);
  };
  return showGeneralDialog(
    context: context,
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      final Widget pageChild = Builder(builder: builder);
      return SafeArea(
        child: Builder(builder: (BuildContext context) {
          return theme != null
              ? Theme(data: theme, child: pageChild)
              : pageChild;
        }),
      );
    },
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.white,
    transitionDuration: const Duration(milliseconds: 180),
    transitionBuilder: _buildMaterialDialogTransitions,
  );
}

Widget _buildMaterialDialogTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  // 使用缩放动画
  return ScaleTransition(
    scale: CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    ),
    child: child,
  );
}
