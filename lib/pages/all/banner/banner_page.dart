///ALL页面专题Banner详情页

import 'dart:convert';
import 'package:flutter/cupertino.dart';
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
  ValueNotifier canGoBack = ValueNotifier(false);
  ValueNotifier canGoForward = ValueNotifier(false);

  bool loaded = false;
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
      appBar: AppBar(
        title: Text('专题'),
        actions: <Widget>[
          Container(
            child: !loaded
                ? CupertinoActivityIndicator()
                : IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      setState(() {
                        loaded = false;
                      });
                      _webViewController.reload();
                    },
                  ),
            margin: EdgeInsets.fromLTRB(2.0, 0, 10.0, 0),
          ),
        ],
      ),
      body: WebView(
        initialUrl: '',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
          _loadHtml();
        },
        onPageFinished: (String url) {
          setState(() {
            loaded = true;
          });
          refreshNavigator();
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: IconTheme(
          data: Theme.of(context).iconTheme.copyWith(opacity: 0.7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ValueListenableBuilder(
                valueListenable: canGoBack,
                builder: (context, value, child) => IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: !value
                        ? null
                        : () {
                            _webViewController.goBack();
                            refreshNavigator();
                          }),
              ),
              ValueListenableBuilder(
                valueListenable: canGoForward,
                builder: (context, value, child) => IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: !value
                        ? null
                        : () {
                            _webViewController.goForward();
                            refreshNavigator();
                          }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void refreshNavigator() {
    /// 是否可以后退
    _webViewController.canGoBack().then((value) {
      return canGoBack.value = value;
    });

    /// 是否可以前进
    _webViewController.canGoForward().then((value) {
      return canGoForward.value = value;
    });
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
