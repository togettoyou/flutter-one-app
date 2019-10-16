///详情页面

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

class detailsPage extends StatefulWidget {
  final arguments;

  detailsPage({this.arguments});

  @override
  _detailsPageState createState() {
    return _detailsPageState();
  }
}

class _detailsPageState extends State<detailsPage> {
  String _title;
  String _type;
  String _id;

  @override
  void initState() {
    super.initState();
    _title = widget.arguments['title'];
    _type = widget.arguments['type'];
    _id = widget.arguments['id'];
    print("title:$_title type:$_type id:$_id");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("详情"),
      ),
      body: new Center(
        child: SingleChildScrollView(
          child: Html(
            data: """
            <p>hello</p>
            """,
            //Optional parameters:
            padding: EdgeInsets.all(8.0),
            linkStyle: const TextStyle(
              color: Colors.redAccent,
              decorationColor: Colors.redAccent,
              decoration: TextDecoration.underline,
            ),
            onLinkTap: (url) {
              print("Opening $url...");
            },
            onImageTap: (src) {
              print(src);
            },
            //Must have useRichText set to false for this to work
            customRender: (node, children) {
              if (node is dom.Element) {
                switch (node.localName) {
                  case "custom_tag":
                    return Column(children: children);
                }
              }
              return null;
            },
            customTextAlign: (dom.Node node) {
              if (node is dom.Element) {
                switch (node.localName) {
                  case "p":
                    return TextAlign.justify;
                }
              }
              return null;
            },
            customTextStyle: (dom.Node node, TextStyle baseStyle) {
              if (node is dom.Element) {
                switch (node.localName) {
                  case "p":
                    return baseStyle.merge(TextStyle(height: 2, fontSize: 20));
                }
              }
              return baseStyle;
            },
          ),
        ),
      ),
    );
  }
}
