///分类二级页面子项Item

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/entity/category/category_hp_entity.dart';
import '../../../utils/date_utils.dart';

class categoryPageItem extends StatelessWidget {
  String _type;
  List _data;

  categoryPageItem(this._type, this._data);

  String getNowMonth() {
    String _nowMonth;
    switch (_type) {
      case "hp":
        _nowMonth = _data[0].maketime;
        break;
      case "question":
        _nowMonth = _data[0].questionMakettime;
        break;
      case "essay":
        _nowMonth = _data[0].hpMakettime;
        break;
      case "serialcontent":
        _nowMonth = _data[0].maketime;
        break;
      default:
        return "分割线";
    }
    return DateUtil.formatDateStr(_nowMonth, format: "MM月");
  }

  Widget getItemByHpWidget(CategoryHpData item) {
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
                imageUrl: item.hpImgUrl,
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
                DateUtil.formatDateStr(item.maketime, format: "yyyy/MM/dd"),
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

  Widget getItemByDefaultWidget(var item) {
    String title = "";
    String subTitle = "";
    String imgUrl = "";
    switch (_type) {
      case "question":
        title = item.questionTitle;
        subTitle = item.answerContent;
        imgUrl = item.authorList[0].webUrl;
        break;
      case "essay":
        title = item.hpTitle;
        subTitle = "文/${item.author[0].userName}";
        imgUrl = item.author[0].webUrl;
        break;
      case "serialcontent":
        title = item.title;
        subTitle = "文/${item.author.userName}";
        imgUrl = item.author.webUrl;
        break;
      case "music":
        title = item.storyTitle;
        subTitle = "${item.album} | ${item.author.userName}";
        imgUrl = item.authorList[0].webUrl;
        break;
    }
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black87,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      leading: CachedNetworkImage(
        width: 40,
        height: 40,
        imageUrl: imgUrl,
      ),
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
                  getNowMonth(),
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
        _type == "hp"
            ? GridView.builder(
                shrinkWrap: true,
                itemCount: _data.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return getItemByHpWidget(_data[index]);
                },
              )
            : ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return getItemByDefaultWidget(_data[index]);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0.2,
                    color: Colors.black38,
                  );
                },
                itemCount: _data.length,
              )
      ],
    );
  }
}
