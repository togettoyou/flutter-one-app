///ONE首页列表子项item

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/entity/one_page_item_entity.dart';
import 'package:flutter_one_app/utils/date_utils.dart';
import 'package:flutter_one_app/widgets/image_download_widget.dart';

class OnePageItem extends StatelessWidget {
  final OnePageItemData _data;

  OnePageItem(this._data);

  Widget getItemWidget(OnePageItemDataContentList item, BuildContext context) {
    Widget _widget;
    switch (int.parse(item.category)) {
      case 0:
        _widget = Column(
          children: <Widget>[
            InkWell(
              child: CachedNetworkImage(
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
                imageUrl: item.imgUrl,
              ),
              onTap: () {
                showDialog<Null>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ImageDownloadWidget(item.imgUrl);
                  },
                ).then((val) {});
              },
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
                        padding: EdgeInsets.only(left: 46.0, top: 16.0),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.explore,
                            color: Colors.black,
                          ),
                          iconSize: 18.5,
                        ),
                        padding: EdgeInsets.only(
                          left: 6.0,
                        ),
                      ),
                    ],
                  ),
                  flex: 6,
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(Icons.colorize),
                      iconSize: 18.0,
                    ),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(Icons.bookmark_border),
                      iconSize: 18.0,
                    ),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(Icons.share),
                      iconSize: 18.0,
                    ),
                    padding: EdgeInsets.only(left: 10.0),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
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
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(top: 5.0, right: 3.0),
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          iconSize: 18.5,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(right: 2.0),
                  ),
                  flex: 2,
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
                ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        "${Api.category[int.parse(_data.contentList[index + 1].category)]}",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                      ),
                      subtitle: Text(
                        "${_data.contentList[index + 1].title}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      leading: Container(
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          size: 18.0,
                        ),
                        padding: EdgeInsets.only(top: 12.0, left: 12.0),
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/detailsPage',
                          arguments: {
                            "type":
                                "${Api.categoryEn[int.parse(_data.contentList[index + 1].category)]}",
                            "title": "${_data.contentList[index + 1].title}",
                            "id": "${_data.contentList[index + 1].contentId}",
                          },
                        );
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 0,
                      color: Colors.white,
                    );
                  },
                  itemCount: _data.contentList.length - 1,
                )
              ],
              initiallyExpanded: false,
            ),
          ],
        );
        break;
      default:
        _widget = InkWell(
          child: Container(
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
                  padding: EdgeInsets.only(top: 12.0),
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
                  padding: EdgeInsets.only(top: 6.0, bottom: 12.0),
                ),

                ///判断是否音乐类型
                int.parse(item.category) == 4
                    ? Stack(
                        children: <Widget>[
                          ClipOval(
                            child: CachedNetworkImage(
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                              imageUrl: item.imgUrl,
                            ),
                          ),
                          Container(
                            child: IconButton(
                                icon: Icon(
                              Icons.play_circle_filled,
                              size: 80.0,
                              color: Colors.black54,
                            )),
                            padding: EdgeInsets.only(bottom: 45.0, right: 45.0),
                          ),
                        ],
                        alignment: Alignment.center,
                      )
                    : CachedNetworkImage(
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        imageUrl: item.imgUrl,
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
                  padding: EdgeInsets.only(top: 10.0, bottom: 12.0),
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
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(top: 5.0),
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
                        padding: EdgeInsets.only(left: 18.0),
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/detailsPage',
              arguments: {
                "type": "${Api.categoryEn[int.parse(item.category)]}",
                "title": "${item.title}",
                "id": "${item.contentId}",
              },
            );
          },
        );
        break;
    }
    return _widget;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          child: getItemWidget(_data.contentList[index], context),
          color: Colors.white,
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 12.0,
          color: Color(0xFFF4F4F4),
        );
      },
      itemCount: _data.contentList.length,
    );
  }
}
