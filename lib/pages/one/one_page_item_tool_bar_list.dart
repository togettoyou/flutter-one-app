import 'package:flutter/material.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/utils/date_utils.dart';
import 'package:flutter_one_app/utils/net_utils.dart';

class OnePageItemToolBarList extends StatefulWidget {
  OnePageItemToolBarList({Key key}) : super(key: key);

  @override
  _OnePageItemToolBarListState createState() {
    return _OnePageItemToolBarListState();
  }
}

class _OnePageItemToolBarListState extends State<OnePageItemToolBarList> {
  @override
  void initState() {
    super.initState();
//    NetUtils.get(
//      Api.getToolBarList(
//          DateUtil.formatDate(DateTime.now(), format: DataFormats.y_mo)),
//      success: (response) {
//        print(response);
//      },
//      fail: (exception) {},
//    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text("hello");
  }
}
