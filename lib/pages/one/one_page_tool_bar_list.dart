///ONE首页头部ToolBar进入往期列表

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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
  int _num;
  EasyRefreshController _controller = EasyRefreshController();
  List<OnePageToolBarListItemEntity> _data = List();
  String _nowMonth;
  String _nowDate;

  @override
  void initState() {
    super.initState();
    _num = 1;
    _nowMonth = DateUtil.formatDate(DateTime.now(), format: DataFormats.y_mo);
    _nowDate = DateUtil.formatDate(DateTime.now(), format: DataFormats.zh_y_mo);
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
        OnePageToolBarListItemEntity onePageToolBarListItemEntity =
            OnePageToolBarListItemEntity.fromJson(json.decode(response));
        if (onePageToolBarListItemEntity != null &&
            onePageToolBarListItemEntity.data != null &&
            _data != null) {
          if (onePageToolBarListItemEntity.data.length > 0) {
            setState(() {
              _data.add(onePageToolBarListItemEntity);
            });
          } else {
            ///如果上一个月无数据，尝试搜索往前10个月的数据
            if (_num % 10 != 0) {
              print("往上一个月加载重试次数:$_num");
              _nowMonth = DateUtil.getLastMonth(_nowMonth);
              getToolBarList();
            }
            _num++;
          }
        }
      },
      fail: (exception) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          EasyRefresh.custom(
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
                _nowDate = DateUtil.formatDate(DateTime.now(),
                    format: DataFormats.zh_y_mo);
                _data.clear();
              });
              _nowMonth =
                  DateUtil.formatDate(DateTime.now(), format: DataFormats.y_mo);
              getToolBarList();
              _controller.resetLoadState();
            },
            onLoad: () async {
              _nowMonth = DateUtil.getLastMonth(_nowMonth);
              setState(() {
                _nowDate =
                    "${_nowMonth.split('-')[0]}年${_nowMonth.split('-')[1]}月";
              });
              getToolBarList();
              _controller.finishLoad();
            },
          ),

          ///修复debug模式往期列表选择日期奔溃bug
          ///不能直接用_data.length == 0?Widget():ListView
          Visibility(
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ),
            visible: _data.length == 0,
            maintainState: false,
            maintainAnimation: false,
            maintainSize: false,
          ),
          InkWell(
            child: Container(
              color: Colors.white,
              height: 48.0,
              width: double.maxFinite,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "$_nowDate",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black54,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black54,
                      size: 18.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(bottom: 8.0),
              ),
            ),
            onTap: () {
              DatePicker.showDatePicker(
                context,
                locale: LocaleType.zh,
                minTime: DateTime(2012, 10, 1),
                maxTime: DateTime.now(),
                onConfirm: (date) async {
                  setState(() {
                    _nowDate =
                        DateUtil.formatDate(date, format: DataFormats.zh_y_mo);
                    _data.clear();
                  });
                  _nowMonth =
                      DateUtil.formatDate(date, format: DataFormats.y_mo);
                  getToolBarList();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
