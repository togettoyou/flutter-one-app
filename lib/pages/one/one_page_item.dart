///ONE首页列表子项item

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/entity/one_page_item_entity.dart';
import 'package:flutter_one_app/utils/date_utils.dart';

class OnePageItem extends StatelessWidget {
  final OnePageItemDataContentList item;

  OnePageItem(this.item);

  Widget getItemWidget() {
    Widget _widget;
    switch (int.parse(item.category)) {
      case 0:
        _widget = Column(
          children: <Widget>[
            InkWell(
              child: CachedNetworkImage(
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                imageUrl: item.imgUrl,
              ),
              onTap: () {},
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text(
                        "${item.title} | ${item.picInfo}",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 12.0),
                  ),
                  Container(
                    child: Text(
                      item.forward,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15.0,
                      ),
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 26.0, left: 12.0),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "${item.wordsInfo}",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 26.0, bottom: 24.0),
                  ),
                ],
              ),
            ),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "发现",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        padding: EdgeInsets.only(left: 36.0, top: 16.0),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.explore,
                          color: Colors.black,
                        ),
                        iconSize: 18.5,
                      ),
                    ],
                  ),
                  flex: 4,
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(Icons.colorize),
                      iconSize: 18.0,
                    ),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(Icons.bookmark_border),
                      iconSize: 18.0,
                    ),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(Icons.share),
                      iconSize: 18.0,
                    ),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Text(
                          item.likeCount.toString(),
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
                      ),
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            Container(
              height: 10.0,
              color: Color(0xFFF4F4F4),
            ),
            ExpansionTile(
              title: Center(
                child: Text(
                  "一个 ${item.volume}",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 13.0,
                  ),
                ),
              ),
              children: <Widget>[
                ListTile(
                  title: Text('list tile'),
                  subtitle: Text('subtitle'),
                  leading: Icon(Icons.keyboard_arrow_right),
                )
              ],
              initiallyExpanded: false,
            ),
          ],
        );
        break;
      default:
        _widget = Container(
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
                  item.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                ),
                width: double.infinity,
              ),
              Container(
                child: Text(
                  "文/${item.author.userName}",
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
                  imageUrl: item.imgUrl,
                ),
                onTap: () {},
              ),
              Container(
                child: Text(
                  item.forward,
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
                        DateUtil.isToday(
                                DateUtil.getDateMsByTimeStr(item.postDate))
                            ? "今天"
                            : DateUtil.formatDateStr(item.postDate,
                                format: "MM月d日"),
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
                            item.likeCount.toString(),
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
        break;
    }
    return _widget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getItemWidget(),
      color: Colors.white,
    );
  }
}
