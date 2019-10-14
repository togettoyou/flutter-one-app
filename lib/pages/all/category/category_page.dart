///分类二级页面

import 'package:flutter/material.dart';

class categoryPage extends StatefulWidget {
  final arguments;

  categoryPage({this.arguments});

  @override
  _categoryPageState createState() {
    return _categoryPageState();
  }
}

class _categoryPageState extends State<categoryPage> {
  String _title;
  String _category;

  @override
  void initState() {
    super.initState();
    _title = widget.arguments['name'];
    _category = widget.arguments['type'];
    print(_title);
    print(_category);
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
          _title,
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 3.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
    );
  }
}
