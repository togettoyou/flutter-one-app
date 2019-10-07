///ME我的页面

import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  MePage({Key key}) : super(key: key);

  @override
  _MePageState createState() {
    return _MePageState();
  }
}

class _MePageState extends State<MePage> {
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
    return Center(
      child: Text("me"),
    );
  }
}
