///ONE首页

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_one_app/pages/one/one_page_item.dart';

class OnePage extends StatefulWidget {
  OnePage({Key key}) : super(key: key);

  @override
  _OnePageState createState() {
    return _OnePageState();
  }
}

class _OnePageState extends State<OnePage> {
  @override
  void initState() {
    super.initState();
//    NetUtils.get(
//      Api.idListUrl,
//      success: (response) {
//        print(response);
//      },
//      fail: (exception) {
//        print('ERROR!!!!!!!!');
//      },
//    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Text('07',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                  letterSpacing: -0.5,
                )),
            Padding(
              child: Text('oct.2019',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    letterSpacing: 0.5,
                  )),
              padding: EdgeInsets.fromLTRB(2.0, 12.0, 0, 0),
            ),
            Padding(
              child: Transform(
                transform: Matrix4.identity()..rotateZ(pi / 2 * 4), // 旋转的角度
                origin: Offset(6, 6), // 旋转的中心点
                child: Icon(
                  Icons.network_cell,
                  color: Colors.black,
                  size: 8.0,
                ),
              ),
              padding: EdgeInsets.fromLTRB(4.0, 16.0, 0, 0),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            child: Text('地球 对流层 -273.15℃',
                style: TextStyle(color: Colors.black87, fontSize: 12.0)),
            padding: EdgeInsets.fromLTRB(0, 26.0, 5.0, 0),
          ),
        ],

        /// 阴影
        elevation: 0.5,
      ),
      body: ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return OnePageItem(null);
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 12,
            color: Color(0xFFF4F4F4),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
