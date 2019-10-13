///ONE首页头部ToolBar进入往期列表

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/entity/one_page_tool_bar_list_item_entity.dart';
import 'package:flutter_one_app/pages/one/one_page_tool_bar_list_item.dart';
import 'package:flutter_one_app/utils/date_utils.dart';
import 'package:flutter_one_app/utils/net_utils.dart';
import 'package:flutter_one_app/utils/refresh_utils.dart';

class OnePageToolBarList extends StatefulWidget {
  OnePageToolBarList({Key key}) : super(key: key);

  @override
  _OnePageToolBarListState createState() {
    return _OnePageToolBarListState();
  }
}

class _OnePageToolBarListState extends State<OnePageToolBarList> {
  EasyRefreshController _controller = EasyRefreshController();
  List<OnePageToolBarListItemEntity> _data = List();
  String _nowMonth;

  @override
  void initState() {
    super.initState();
    _nowMonth = DateUtil.formatDate(DateTime.now(), format: DataFormats.y_mo);
    getToolBarList();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void getToolBarList() {
    NetUtils.get(
      Api.getToolBarList(_nowMonth),
      success: (response) {
        setState(() {
          OnePageToolBarListItemEntity onePageToolBarListItemEntity =
              OnePageToolBarListItemEntity.fromJson(json.decode(response));
          if (onePageToolBarListItemEntity.data != null &&
              onePageToolBarListItemEntity.data.length > 0) {
            _data.add(onePageToolBarListItemEntity);
          }
        });
      },
      fail: (exception) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: EasyRefresh.custom(
        header: RefreshUtils.defaultHeader(),
        footer: RefreshUtils.defaultFooter(),
        controller: _controller,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              child: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return onePageToolBarListItem(_data[index].data);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0,
                    color: Colors.white,
                  );
                },
                itemCount: _data.length,
              ),
            ),
          ),
        ],
        onRefresh: () async {
          setState(() {
            _nowMonth =
                DateUtil.formatDate(DateTime.now(), format: DataFormats.y_mo);
            _data.clear();
          });
          getToolBarList();
          _controller.resetLoadState();
        },
        onLoad: () async {
          setState(() {
            _nowMonth = DateUtil.getLastMonth(_nowMonth);
          });
          getToolBarList();
          _controller.finishLoad();
        },
      ),
    );
  }
}
