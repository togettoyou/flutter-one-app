///图片下载对话框

import 'package:flutter/material.dart';
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
