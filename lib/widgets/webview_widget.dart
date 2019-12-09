///自定义WebView

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

typedef void Callback(WebViewController controller);

class webviewWidget extends StatefulWidget {
  ///url地址
  final String url;

  ///页面标题
  final String title;

  ///网页加载初始化需要执行的函数
  final Function onWebViewCreatedFunction;

  ///回调获取WebViewController
  final Callback callback;

  webviewWidget({
    this.url,
    this.title,
    this.onWebViewCreatedFunction,
    this.callback,
  });

  @override
  _webviewWidgetState createState() {
    return _webviewWidgetState();
  }
}

class _webviewWidgetState extends State<webviewWidget> {
  WebViewController _webViewController;
  ValueNotifier canGoBack = ValueNotifier(false);
  ValueNotifier canGoForward = ValueNotifier(false);

  bool loaded = false;
  String url;
  String title;

  @override
  void initState() {
    super.initState();
    url = widget.url;
    title = widget.title;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
          if (widget.callback != null) {
            widget.callback(webViewController);
          }
          if (widget.onWebViewCreatedFunction != null) {
            widget.onWebViewCreatedFunction();
          }
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
}

///显示网页页面
Future<T> showWebViewPage<T>(
  BuildContext context, {

  ///url地址
  final String url,

  ///页面标题
  final String title,

  ///网页加载初始化需要执行的函数
  final Function onWebViewCreatedFunction,

  ///回调获取WebViewController
  final Callback callback,
}) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) {
    return webviewWidget(
      url: url,
      title: title,
      onWebViewCreatedFunction: onWebViewCreatedFunction,
      callback: callback,
    );
  }));
}
