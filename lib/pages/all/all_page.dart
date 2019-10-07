///ALL导航页面

import 'package:flutter/material.dart';

class AllPage extends StatefulWidget {
  AllPage({Key key}) : super(key: key);

  @override
  _AllPageState createState() {
    return _AllPageState();
  }
}

class _AllPageState extends State<AllPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ONE IS ALL',
          style: TextStyle(color: Colors.black, letterSpacing: 3.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black38,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("all"),
      ),
    );
  }
}
