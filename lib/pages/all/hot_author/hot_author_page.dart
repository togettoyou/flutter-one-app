///热门作者详情页

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/entity/all_page_item_hot_author_entity.dart';
import 'package:flutter_one_app/entity/hot_author_page_item_entity.dart';
import 'package:flutter_one_app/pages/one/one_page_item.dart';
import 'package:flutter_one_app/utils/net_utils.dart';
import 'package:flutter_one_app/utils/refresh_utils.dart';
import 'package:flutter_one_app/widgets/circle_header_widget.dart';
import 'package:flutter_one_app/widgets/loading_widget.dart';

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
  EasyRefreshController _controller = EasyRefreshController();
  LinkHeaderNotifier _headerNotifier = LinkHeaderNotifier();
  List<HotAuthorPageItemEntity> _listData = List();
  int _num = 0;

  @override
  void initState() {
    super.initState();
    authorData = widget.arguments;
    Future.delayed(new Duration(milliseconds: 900), () {
      return "延时请求数据，降低跳转卡顿现象";
    }).then((data) {
      getData();
    });
  }

  @override
  void dispose() {
    _headerNotifier.dispose();
    _controller.dispose();
    super.dispose();
  }

  void getData() {
    if (_num != -1) {
      NetUtils.get(
        Api.getHotAuthorWorksUrl(_num, authorData.userId),
        success: (response) {
          HotAuthorPageItemEntity hotAuthorPageItemEntity =
              HotAuthorPageItemEntity.fromJson(json.decode(response));
          if (hotAuthorPageItemEntity != null &&
              hotAuthorPageItemEntity.data != null) {
            if (hotAuthorPageItemEntity.data.length != 0) {
              setState(() {
                _listData.add(hotAuthorPageItemEntity);
              });
              _num++;
            } else {
              _num = -1;
            }
          }
        },
        fail: (exception) {},
      );
    }
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
        controller: _controller,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 350.0,
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
          SliverToBoxAdapter(
            child: _listData == null || _listData.length == 0
                ? LoadingShimmerWidget(
                    num: 2,
                  )
                : Container(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return OnePageItem(_listData[index].data);
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 12.0,
                          color: Color(0xFFF4F4F4),
                        );
                      },
                      itemCount: _listData.length,
                    ),
                  ),
          ),
        ],
        onRefresh: () async {
          setState(() {
            _listData.clear();
          });
          _num = 0;
          getData();
          _controller.resetLoadState();
        },
        onLoad: () async {
          getData();
          _controller.finishLoad(noMore: _num == -1);
        },
      ),
    );
  }
}
