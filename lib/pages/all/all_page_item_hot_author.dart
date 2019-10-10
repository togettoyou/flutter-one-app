///ALL页面热门作者子项item

import 'package:flutter/material.dart';
import 'package:flutter_one_app/entity/all_page_item_hot_author_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AllPageItemHotAuthor extends StatelessWidget {
  AllPageItemHotAuthorData _item;

  AllPageItemHotAuthor(this._item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.0, right: 6.0),
      child: ListTile(
        title: Text(
          "${_item.userName}",
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          "${_item.desc}",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black87,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        leading: ClipOval(
          child: CachedNetworkImage(
            width: 40,
            height: 40,
            imageUrl: "${_item.webUrl}",
            placeholder: (context, url) => CircularProgressIndicator(
              strokeWidth: 2.5,
              backgroundColor: Colors.deepOrange[300],
            ),
          ),
        ),
        trailing: DecoratedBox(
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
      ),
    );
  }
}
