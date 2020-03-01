///ME我的页面

import 'package:flutter/material.dart';
import 'package:flutter_one_app/widgets/webview_widget.dart';

class MePage extends StatefulWidget {
  MePage({Key key}) : super(key: key);

  @override
  _MePageState createState() {
    return _MePageState();
  }
}

class _MePageState extends State<MePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: CustomScrollView(
        physics: ScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 380.0,
            pinned: false,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.local_post_office,
                  color: Colors.white70,
                ),
              ),
            ],
            leading: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white70,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Stack(
                children: <Widget>[
                  Image.asset(
                    "images/img_me_bg_001.png",
                    fit: BoxFit.cover,
                    height: 480.0,
                  ),
                  Positioned(
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: ClipOval(
                            child: Image.asset(
                              "images/img_me_avatar.png",
                              fit: BoxFit.cover,
                              height: 66.0,
                              width: 66.0,
                            ),
                          ),
                          onTap: () {
                            showWebViewPage(
                              context,
                              url: "https://github.com/togettoyou",
                              title: "夜央 Oh oh oh oh oh oh",
                            );
                          },
                        ),
                        Container(
                          child: Text(
                            "ijoutop",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                            ),
                          ),
                          padding: EdgeInsets.all(5.0),
                        ),
                        Container(
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4.0),
                                child: Image.asset(
                                  'images/img_me_bg_002.png',
                                  fit: BoxFit.cover,
                                  width: 160.0,
                                  height: 140.0,
                                ),
                              ),
                              Positioned(
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 0.5,
                                    ),
                                  ),
                                  child: Container(
                                    child: Row(
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(
                                            Icons.colorize,
                                            color: Colors.white70,
                                            size: 18.0,
                                          ),
                                        ),
                                        Text(
                                          "制作小记",
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(right: 20.0),
                                    height: 30.0,
                                    color: Colors.black38,
                                  ),
                                ),
                                bottom: 68.0,
                              ),
                              Container(
                                child: Text(
                                  '她美丽得恍若梦幻。那...',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                width: 160.0,
                                height: 28.0,
                                alignment: Alignment.center,
                                color: Colors.white70,
                              ),
                            ],
                            alignment: Alignment.bottomCenter,
                          ),
                          padding: EdgeInsets.only(top: 24.0),
                        ),
                      ],
                    ),
                    top: 100.0,
                  ),
                ],
                alignment: Alignment.center,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 8.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(
                left: 18.0,
                top: 13.0,
                bottom: 18.0,
              ),
              child: Text(
                '我的收藏',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                ),
              ),
              color: Colors.white,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.image,
                            color: Colors.black54,
                            size: 26.0,
                          ),
                        ),
                        Text(
                          "图文",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.import_contacts,
                            color: Colors.black54,
                            size: 26.0,
                          ),
                        ),
                        Text(
                          "文章",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.music_video,
                            color: Colors.black54,
                            size: 26.0,
                          ),
                        ),
                        Text(
                          "音乐",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.movie,
                            color: Colors.black54,
                            size: 26.0,
                          ),
                        ),
                        Text(
                          "影视",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.radio,
                            color: Colors.black54,
                            size: 26.0,
                          ),
                        ),
                        Text(
                          "电台",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
              padding: EdgeInsets.only(bottom: 30.0),
              color: Colors.white,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 8.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: ListTile(
                title: Text(
                  "我的关注",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.perm_identity,
                    color: Colors.black54,
                    size: 22.0,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.chevron_right,
                    color: Colors.black54,
                    size: 26.0,
                  ),
                ),
              ),
              color: Colors.white,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 8.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: ListTile(
                title: Text(
                  "歌单",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.play_circle_outline,
                    color: Colors.black54,
                    size: 22.0,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.chevron_right,
                    color: Colors.black54,
                    size: 26.0,
                  ),
                ),
              ),
              color: Colors.white,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 8.0,
            ),
          ),
        ],
      ),
    );
  }
}
