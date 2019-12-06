///ALL页面专题Banner详情页

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_one_app/entity/banner/banner_page_entity.dart';
import 'package:flutter_one_app/utils/net_utils.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:webview_flutter/webview_flutter.dart';

class bannerPage extends StatefulWidget {
  final arguments;

  bannerPage({this.arguments});

  @override
  _bannerPageState createState() {
    return _bannerPageState();
  }
}

class _bannerPageState extends State<bannerPage> {
  WebViewController _webViewController;
  String _contentId;

  @override
  void initState() {
    super.initState();
    _contentId = widget.arguments['contentId'];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('专题')),
        body: WebView(
          initialUrl: '',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _webViewController = webViewController;
            _loadHtml();
          },
        ));
  }

  _loadHtml() async {
    NetUtils.get(
      Api.getDetailsByAllBanner(_contentId),
      success: (response) {
        BannerPageEntity bannerPageEntity =
            BannerPageEntity.fromJson(json.decode(response));

        _webViewController.loadUrl(Uri.dataFromString(
                bannerPageEntity.data.htmlContent,
                mimeType: 'text/html',
                encoding: Encoding.getByName('utf-8'))
            .toString());
      },
      fail: (exception) {},
    );
  }
}
