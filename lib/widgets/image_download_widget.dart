///图片下载对话框

import 'dart:io';
import 'dart:typed_data';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class ImageDownloadWidget extends StatefulWidget {
  String imageUrl;

  ImageDownloadWidget(this.imageUrl);

  @override
  _ImageDownloadWidgetState createState() {
    return _ImageDownloadWidgetState();
  }
}

class _ImageDownloadWidgetState extends State<ImageDownloadWidget> {
  @override
  void initState() {
    super.initState();
    PermissionHandler().requestPermissions(<PermissionGroup>[
      PermissionGroup.storage, // 添加文件存储权限
    ]);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ImageDownloadDialog(widget.imageUrl);
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
              onPressed: _getHttp,
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
            );
          }),
        ),
      ]),
    );
  }

  _getHttp() async {
    var response = await Dio()
        .get(imageUrl, options: Options(responseType: ResponseType.bytes));
    final result =
        await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
    bool isSuccess = false;
    if (Platform.isIOS) {
      isSuccess = result;
    } else if (Platform.isAndroid) {
      if (result != "" || result != null) isSuccess = true;
    }
    if (isSuccess) {
      Fluttertoast.showToast(
          msg: "下载成功",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          textColor: Colors.white,
          backgroundColor: Colors.transparent,
          fontSize: 14.0);
    }
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
    return ImageDownloadWidget(imageUrl);
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
