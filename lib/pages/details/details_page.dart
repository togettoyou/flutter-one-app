///详情页面

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_one_app/api/api.dart';
import 'package:flutter_one_app/entity/details/detail_hp_entity.dart';
import 'package:flutter_one_app/entity/details/detail_movie_entity.dart';
import 'package:flutter_one_app/entity/details/detail_music_entity.dart';
import 'package:flutter_one_app/entity/details/detail_question_entity.dart';
import 'package:flutter_one_app/entity/details/detail_serial_content_entity.dart';
import 'package:flutter_one_app/entity/details/details_essay_entity.dart';
import 'package:flutter_one_app/entity/details/details_item_comment_entity.dart';
import 'package:flutter_one_app/pages/details/details_page_item_comment.dart';
import 'package:flutter_one_app/utils/net_utils.dart';
import 'package:flutter_one_app/widgets/image_download_widget.dart';
import 'package:flutter_one_app/widgets/loading_widget.dart';
import 'package:html/dom.dart' as dom;

class detailsPage extends StatefulWidget {
  final arguments;

  detailsPage({this.arguments});

  @override
  _detailsPageState createState() {
    return _detailsPageState();
  }
}

class _detailsPageState extends State<detailsPage> {
  String _title;
  String _type;
  String _id;
  var _data;
  var _detailsData = {
    'title': '',
    'subTitle': '',
    'content': '',
    'authorIntroduce': '',
    'copyRight': '',
    'author': '',
    'authorDesc': '',
    'authorWebUrl': '',
    'praiseNum': '',
    'commentNum': '',
  };
  DetailsItemCommentData _commentData;

  @override
  void initState() {
    super.initState();
    _title = widget.arguments['title'];
    _type = widget.arguments['type'];
    _id = widget.arguments['id'];
    print("title:$_title type:$_type id:$_id");
    if (_type == "movie") {
      getDetailsByMovieData();
    } else {
      getDetailsData();
    }
    if (_type != "hp") {
      getCommentData();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  void getDetailsByMovieData() {
    NetUtils.get(
      Api.getDetailsByMovieUrl(_id),
      success: (response) {
        setState(() {
          _data = DetailMovieEntity.fromJson(json.decode(response)).data;
          _detailsData['title'] = "${_data.data[0].title}";
          _detailsData['subTitle'] = "文 / ${_data.data[0].user.userName}";
          _detailsData['content'] = "${_data.data[0].content}";
          _detailsData['authorIntroduce'] =
              "${_data.data[0].chargeEdt} ${_data.data[0].editorEmail}";
          _detailsData['copyRight'] = "${_data.data[0].copyright}";
          _detailsData['author'] =
              "${_data.data[0].user.userName} ${_data.data[0].user.wbName}";
          _detailsData['authorDesc'] = "${_data.data[0].user.desc}";
          _detailsData['authorWebUrl'] = "${_data.data[0].user.webUrl}";
          _detailsData['praiseNum'] = "${_data.data[0].praisenum}";
          _detailsData['commentNum'] = "";
        });
      },
      fail: (exception) {},
    );
  }

  void getDetailsData() {
    NetUtils.get(
      Api.getDetailsUrl(_type, _id),
      success: (response) {
        setState(() {
          switch (_type) {
            case "hp":
              _data = DetailHpEntity.fromJson(json.decode(response)).data;
              break;
            case "question":
              _data = DetailQuestionEntity.fromJson(json.decode(response)).data;
              _detailsData['title'] = "${_data.questionTitle}";
              _detailsData['subTitle'] =
                  "${_data.asker.userName}问:\n${_data.questionContent}";
              _detailsData['content'] =
                  "${_data.answerer.userName}答:\n${_data.answerContent}";
              _detailsData['authorIntroduce'] = "${_data.chargeEdt}";
              _detailsData['copyRight'] = "${_data.copyright}";
              _detailsData['author'] =
                  "${_data.authorList[0].userName} ${_data.authorList[0].wbName}";
              _detailsData['authorDesc'] = "${_data.authorList[0].desc}";
              _detailsData['authorWebUrl'] = "${_data.authorList[0].webUrl}";
              _detailsData['praiseNum'] = "${_data.praisenum}";
              _detailsData['commentNum'] = "${_data.commentnum}";
              break;
            case "essay":
              _data = DetailsEssayEntity.fromJson(json.decode(response)).data;
              _detailsData['title'] = "${_data.hpTitle}";
              _detailsData['subTitle'] = "文 / ${_data.author[0].userName}";
              _detailsData['content'] = "${_data.hpContent}";
              _detailsData['authorIntroduce'] = "${_data.hpAuthorIntroduce}";
              _detailsData['copyRight'] = "${_data.copyright}";
              _detailsData['author'] = "${_data.author[0].userName}";
              _detailsData['authorDesc'] = "${_data.author[0].desc}";
              _detailsData['authorWebUrl'] = "${_data.author[0].webUrl}";
              _detailsData['praiseNum'] = "${_data.praisenum}";
              _detailsData['commentNum'] = "${_data.commentnum}";
              break;
            case "serialcontent":
              _data = DetailSerialContentEntity.fromJson(json.decode(response))
                  .data;
              _detailsData['title'] = "${_data.title}";
              _detailsData['subTitle'] = "文 / ${_data.author.userName}";
              _detailsData['content'] = "${_data.content}";
              _detailsData['authorIntroduce'] = "${_data.chargeEdt}";
              _detailsData['copyRight'] = "${_data.copyright}";
              _detailsData['author'] =
                  "${_data.author.userName} ${_data.author.wbName}";
              _detailsData['authorDesc'] = "${_data.author.desc}";
              _detailsData['authorWebUrl'] = "${_data.author.webUrl}";
              _detailsData['praiseNum'] = "${_data.praisenum}";
              _detailsData['commentNum'] = "${_data.commentnum}";
              break;
            case "music":
              _data = DetailMusicEntity.fromJson(json.decode(response)).data;
              _detailsData['title'] = "${_data.storyTitle}";
              _detailsData['subTitle'] = "文 / ${_data.storyAuthor.userName}";
              _detailsData['content'] = "${_data.story}";
              _detailsData['authorIntroduce'] = "${_data.chargeEdt}";
              _detailsData['copyRight'] = "${_data.copyright}";
              _detailsData['author'] =
                  "${_data.storyAuthor.userName} ${_data.storyAuthor.wbName}";
              _detailsData['authorDesc'] = "${_data.storyAuthor.desc}";
              _detailsData['authorWebUrl'] = "${_data.storyAuthor.webUrl}";
              _detailsData['praiseNum'] = "${_data.praisenum}";
              _detailsData['commentNum'] = "${_data.commentnum}";
              break;
            default:
              break;
          }
        });
      },
      fail: (exception) {},
    );
  }

  void getCommentData() {
    NetUtils.get(
      Api.getCommentUrl(_type != "serialcontent" ? _type : "serial", _id),
      success: (response) {
        setState(() {
          _commentData =
              DetailsItemCommentEntity.fromJson(json.decode(response)).data;
        });
      },
      fail: (exception) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: Text(
          _title,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark_border,
              color: Colors.black,
            ),
            iconSize: 24.0,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: _data == null
          ? Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            )
          : (_type == "hp" ? getByHpBody() : getBody()),
    );
  }

  Widget getByHpBody() {
    return Column(
      children: <Widget>[
        InkWell(
          child: CachedNetworkImage(
            height: 200.0,
            width: double.infinity,
            fit: BoxFit.cover,
            imageUrl: _data.hpImgUrl,
          ),
          onTap: () {
            showDialog<Null>(
              context: context,
              barrierDismissible: true,
              builder: (BuildContext context) {
                return ImageDownloadWidget(_data.hpImgUrl);
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
                    "${_data.hpAuthor}",
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
                  _data.hpContent,
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
                    "${_data.textAuthors}",
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
                        _data.praisenum.toString(),
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
      ],
    );
  }

  Widget getBody() {
    return Stack(
      children: <Widget>[
        CustomScrollView(
          physics: ScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      _detailsData['title'],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    Container(
                      child: Text(
                        _detailsData['subTitle'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 24.0),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                padding: EdgeInsets.all(14.0),
              ),
            ),
            SliverToBoxAdapter(
              child: Html(
                data: _detailsData['content'],
                //Optional parameters:
                padding: EdgeInsets.all(14.0),
                onImageTap: (src) {
                  print(src);
                },
                customTextStyle: (dom.Node node, TextStyle baseStyle) {
                  if (node is dom.Element) {
                    switch (node.localName) {
                      case "p":
                        return baseStyle
                            .merge(TextStyle(height: 2.0, fontSize: 18.0));
                    }
                  }
                  return baseStyle;
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      _detailsData['authorIntroduce'],
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.0,
                      ),
                    ),
                    Container(
                      child: Text(
                        _detailsData['copyRight'],
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 16.0),
                    ),
                    Container(
                      child: Text(
                        "作者",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 24.0, bottom: 12.0),
                    ),
                    Container(
                      height: 4.0,
                      width: 68.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      title: Text(
                        _detailsData['author'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                      subtitle: Text(
                        _detailsData['authorDesc'],
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12.0,
                        ),
                      ),
                      leading: ClipOval(
                        child: CachedNetworkImage(
                          width: 40,
                          height: 40,
                          imageUrl: _detailsData['authorWebUrl'],
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
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                padding: EdgeInsets.all(14.0),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "评论列表",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 24.0, bottom: 12.0),
                    ),
                    Container(
                      height: 4.0,
                      width: 68.0,
                      color: Colors.black,
                    ),
                    _commentData == null
                        ? LoadingShimmerWidget(
                            num: 1,
                          )
                        : ListView.separated(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                child: detailsPageItemComment(
                                    _commentData.data[index]),
                                color: Colors.white,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                height: 12.0,
                                color: Color(0xFFF4F4F4),
                              );
                            },
                            itemCount: _commentData.data.length,
                          ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                padding: EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 20.0),
              ),
            ),
          ],
        ),
        Container(
          height: 56.0,
          width: double.maxFinite,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                height: 0.2,
                width: double.maxFinite,
                color: Colors.black38,
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                            color: Colors.black54,
                            width: 0.5,
                          ),
                        ),
                        child: Container(
                          child: Text(
                            "写一个评论..",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 22.0, right: 22.0),
                    ),
                    flex: 6,
                  ),
                  Expanded(
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Text(
                              _detailsData['praiseNum'],
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
                            iconSize: 20.0,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(right: 2.0),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Text(
                              _detailsData['commentNum'],
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
                            icon: Icon(Icons.chat_bubble_outline),
                            iconSize: 20.0,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(right: 2.0),
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
                ],
              ),
            ],
          ),
        ),
      ],
      alignment: Alignment.bottomCenter,
    );
  }
}
