///详情页面评论列表

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/entity/details/details_item_comment_entity.dart';

class detailsPageItemComment extends StatelessWidget {
  DetailsItemCommentDataData _data;

  detailsPageItemComment(this._data);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "${_data.user.userName}",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14.0,
              ),
            ),
            leading: ClipOval(
              child: CachedNetworkImage(
                width: 20.0,
                height: 20.0,
                imageUrl: "${_data.user.webUrl}",
              ),
            ),
            trailing: Text(
              "${_data.inputDate}",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 11.0,
              ),
            ),
          ),
          Container(
            child: Text(
              "${_data.content}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
            padding: EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
          ),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.chat_bubble_outline),
                  iconSize: 20.0,
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  iconSize: 20.0,
                ),
                Text(
                  "${_data.praisenum}",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12.0,
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            padding: EdgeInsets.only(right: 24.0),
          ),
          Container(
            height: 0.2,
            width: double.maxFinite,
            color: Colors.black38,
          ),
        ],
      ),
    );
  }
}
