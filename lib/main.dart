import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_one_app/application/app.dart';
import 'package:flutter_one_app/events/one_tool_bar_list_event.dart';
import 'package:flutter_one_app/pages/all/all_page.dart';
import 'package:flutter_one_app/pages/me/me_page.dart';
import 'package:flutter_one_app/pages/one/one_page.dart';
import 'package:flutter_one_app/routers/routers.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    ///设置Android状态栏透明
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _tabTitles = <String>['ONE', 'ALL', 'ME'];
  final _tabTextStyleNormal = TextStyle(color: Colors.black45);
  final _tabTextStyleSelected = TextStyle(color: Colors.black);

  int _tabIndex = 0;
  var _tabImages;
  var _tabPages;
  var _body;

  ///ONE页面点击TooBar展开列表隐藏底部Bar
  bool isShowList = false;

  @override
  void initState() {
    super.initState();
    _tabImages ??= <List<Image>>[
      [
        getTabImage('images/ic_one_normal.png'),
        getTabImage('images/ic_one_selected.png')
      ],
      [
        getTabImage('images/ic_all_normal.png'),
        getTabImage('images/ic_all_selected.png')
      ],
      [
        getTabImage('images/ic_me_normal.png'),
        getTabImage('images/ic_me_selected.png')
      ],
    ];
    _tabPages ??= <Widget>[OnePage(), AllPage(), MePage()];
    App.eventBus.on<oneToolBarListEvent>().listen((event) {
      setState(() {
        isShowList = event.isShowList;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Image getTabImage(imagePath) {
    return Image.asset(imagePath, width: 22, height: 22);
  }

  Image getTabIcon(int index) {
    if (_tabIndex == index) {
      return _tabImages[index][1];
    }
    return _tabImages[index][0];
  }

  TextStyle getTabTextStyle(int index) {
    if (_tabIndex == index) {
      return _tabTextStyleSelected;
    }
    return _tabTextStyleNormal;
  }

  Text getTabTitle(index) {
    return Text(
      _tabTitles[index],
      style: getTabTextStyle(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    _body = IndexedStack(
      children: _tabPages,
      index: _tabIndex,
    );
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFFFFFFF),
      ),
      home: Scaffold(
        body: _body,
        bottomNavigationBar: isShowList
            ? null
            : CupertinoTabBar(
                backgroundColor: Color(0xFFFFFFFF),
                items: [
                  BottomNavigationBarItem(
                      icon: getTabIcon(0), title: getTabTitle(0)),
                  BottomNavigationBarItem(
                      icon: getTabIcon(1), title: getTabTitle(1)),
                  BottomNavigationBarItem(
                      icon: getTabIcon(2), title: getTabTitle(2)),
                ],
                currentIndex: _tabIndex,
                onTap: (index) {
                  setState(() {
                    _tabIndex = index;
                  });
                },
              ),
      ),

      ///绑定路由
      onGenerateRoute: generateRoute,
    );
  }
}
