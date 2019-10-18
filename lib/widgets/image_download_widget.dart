///图片下载对话框

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
    return AlertDialog(
      backgroundColor: Colors.white,
      elevation: 48.0,
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Card(
              child: CachedNetworkImage(
                imageUrl: widget.imageUrl,
              ),
              elevation: 6.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: IconButton(
                icon: Icon(
                  Icons.file_download,
                  color: Colors.black,
                  size: 32.0,
                ),
                onPressed: _getHttp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getHttp() async {
    var response = await Dio().get(widget.imageUrl,
        options: Options(responseType: ResponseType.bytes));
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
          textColor: Colors.black,
          backgroundColor: Colors.white,
          fontSize: 14.0);
    }
  }
}
