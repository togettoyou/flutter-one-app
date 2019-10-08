///ONE首页列表子项item

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/entity/one_page_item_entity.dart';

class OnePageItem extends StatelessWidget {
  final OnePageItemDataContentList item;

  OnePageItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 0),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              "-${Api.category[int.parse(item.category)]}-",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12.0,
              ),
            ),
          ),
          Container(
            child: Text(
              "枪毙乌鸦",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
            width: double.infinity,
          ),
          Container(
            child: Text(
              "文/黄亮",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
              ),
            ),
            width: double.infinity,
            padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
          ),
          InkWell(
            child: CachedNetworkImage(
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl:
                  'http://image.wufazhuce.com/Fu6UbqxuiNedgPJV-Wu97-V96ETB',
            ),
            onTap: () {},
          ),
          Container(
            child: Text(
              "乌鸦是夜的精华，李婶不在医院伺候李叔时，就在家里用我那把枪打乌鸦，她绝对拒绝乌鸦出现在她面前，可她拒绝不了此刻的夜，无论睁眼闭眼她都拒绝不了。",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
              ),
            ),
            width: double.infinity,
            padding: EdgeInsets.only(top: 6.0, bottom: 12.0),
          ),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Text(
                    "10月7日",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 2.0),
                ),
                flex: 4,
              ),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "1521",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10.0,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      padding: EdgeInsets.only(left: 32.0, top: 5.0),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      iconSize: 18.5,
                      color: Colors.black54,
                    ),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  child: IconButton(
                    icon: Icon(Icons.share),
                    iconSize: 18.0,
                    color: Colors.black54,
                  ),
                  padding: EdgeInsets.only(left: 10.0),
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
