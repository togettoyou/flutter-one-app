///热门作者详情页

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/entity/all_page_item_hot_author_entity.dart';
import 'package:flutter_one_app/utils/refresh_utils.dart';
import 'package:flutter_one_app/widgets/circle_header_widget.dart';

class hotAuthorPage extends StatefulWidget {
  final arguments;

  hotAuthorPage({this.arguments});

  @override
  _hotAuthorPageState createState() {
    return _hotAuthorPageState();
  }
}

class _hotAuthorPageState extends State<hotAuthorPage> {
  AllPageItemHotAuthorData authorData;
  LinkHeaderNotifier _headerNotifier;

  @override
  void initState() {
    super.initState();
    authorData = widget.arguments;
    _headerNotifier = LinkHeaderNotifier();
  }

  @override
  void dispose() {
    _headerNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasyRefresh.custom(
        header: LinkHeader(
          _headerNotifier,
          extent: 70.0,
          triggerDistance: 70.0,
          completeDuration: Duration(milliseconds: 500),
        ),
        footer: RefreshUtils.defaultFooter(),
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 320.0,
            pinned: true,
            title: Text(
              "${authorData.userName}",
            ),
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.lightBlueAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: CachedNetworkImage(
                        width: 80.0,
                        height: 80.0,
                        imageUrl: "${authorData.webUrl}",
                        placeholder: (context, url) =>
                            CircularProgressIndicator(
                          strokeWidth: 2.5,
                          backgroundColor: Colors.deepOrange[300],
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "${authorData.summary}",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black54,
                        ),
                      ),
                      padding: EdgeInsets.all(10.0),
                    ),
                    Container(
                      child: Text(
                        "${authorData.desc}",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      padding: EdgeInsets.all(10.0),
                    ),
                    Container(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          border: Border.all(
                            color: Colors.black87,
                            width: 0.5,
                          ),
                        ),
                        child: Container(
                          child: Text(
                            "关注",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
                        ),
                      ),
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      child: Text(
                        "${authorData.fansTotal}关注",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black54,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 100.0),
              ),
            ),
            actions: <Widget>[
              CircleHeader(
                _headerNotifier,
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Text("hello");
              },
              childCount: 100,
            ),
          ),
        ],
        onRefresh: () async {},
        onLoad: () async {},
      ),
    );
  }
}
