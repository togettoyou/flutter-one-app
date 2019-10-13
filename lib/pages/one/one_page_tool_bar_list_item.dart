///ONE首页头部ToolBar往期列表子项Item

import 'package:flutter/material.dart';
import 'package:flutter_one_app/entity/one_page_tool_bar_list_item_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/utils/date_utils.dart';

class onePageToolBarListItem extends StatelessWidget {
  List<OnePageToolBarListItemData> _data;

  onePageToolBarListItem(this._data);

  Widget getItemWidget(OnePageToolBarListItemData item) {
    return Container(
      child: Column(
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: Colors.black38,
                width: 0.5,
              ),
            ),
            child: Container(
              child: CachedNetworkImage(
                height: 110.0,
                width: 180.0,
                fit: BoxFit.cover,
                imageUrl: item.cover,
              ),
              padding: EdgeInsets.all(0.5),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: Colors.black38,
                width: 0.5,
              ),
            ),
            child: Container(
              child: Text(
                item.date,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black54,
                ),
              ),
              alignment: Alignment.center,
              width: 180.0,
              height: 30.0,
            ),
          ),
        ],
      ),
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 0.2,
                  width: 100.0,
                  color: Colors.black38,
                ),
                flex: 1,
              ),
              Container(
                child: Text(
                  DateUtil.formatDateStr(_data[0].date, format: "MM月"),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
              ),
              Expanded(
                child: Container(
                  height: 0.2,
                  width: 100.0,
                  color: Colors.black38,
                ),
                flex: 1,
              ),
            ],
          ),
          padding: EdgeInsets.all(15.0),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: _data.length,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return getItemWidget(_data[index]);
          },
        ),
      ],
    );
  }
}
