# flutter_one_app

- 「ONE·一个」是由韩寒监制 [1]  ，原《独唱团》主创成员共同制作的一款文艺生活App ，官网地址：[「ONE·一个」](http://wufazhuce.com/)。此项目为高仿 ，仅做学习使用
- 此项目中的数据均来自one一个api真实有效数据
- 项目适合Flutter的练手学习，覆盖了各种基本控件使用、下拉刷新上拉加载、HTML解析、音乐播放、图片下载、权限申请等


## API接口

- [one一个图文接口API](http://www.limuyang.cc/one-api-collect/#/?id=one%c2%b7%e4%b8%80%e4%b8%aa)

## APK下载
- [app-release.apk](https://github.com/joudev/flutter-one-app/raw/master/apk/app-release.apk)
## 浏览器扫码下载
![app-release.apk](https://github.com/joudev/flutter-one-app/blob/master/screenshots/qrcode.png)

## 运行截图

| ![ONE首页](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-52-11.png) | ![ONE首页-快速索引列表](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-52-25.png) | ![ONE首页-ToolBar展开列表](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-52-43.png) |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
|                           ONE首页                            |                     ONE首页-快速索引列表                     |                   ONE首页-ToolBar展开列表                    |
| ![ONE首页-ToolBar展开列表-日期选择](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-52-49.png) | ![ALL页面](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-00.png) | ![ALL页面-热门作者](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-05.png) |
|               ONE首页-ToolBar展开列表-日期选择               |                           ALL页面                            |                       ALL页面-热门作者                       |
| ![ME页面](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-09.png) | ![阅读详情](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-17.png) | ![阅读详情-评论](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-37.png) |
|                            ME页面                            |                           阅读详情                           |                        阅读详情-评论                         |
| ![分类-图文](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-48.png) | ![分类-问答](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-53.png) | ![分类-阅读](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-12.png) |
|                          分类-图文                           |                          分类-问答                           |                          分类-阅读                           |
| ![分类-连载](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-16.png) | ![分类-音乐](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-20.png) | ![分类-阅读](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-35.png) |
|                          分类-连载                           |                          分类-音乐                           |                        分类-图文详情                         |
| ![图片下载](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-50.png) | ![音乐详情-播放](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-55-25.png) | ![热门作者动态](https://github.com/joudev/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-55-45.png) |
|                           图片下载                           |                        音乐详情-播放                         |                         热门作者动态                         |

### 使用到的第三方插件


| 名称               | 地址                                                         |
| :----------------- | :----------------------------------------------------------- |
| 网络请求           | [dio](https://pub.dev/packages/dio)                          |
| 网络图片缓存       | [cached_network_image](https://pub.dev/packages/cached_network_image) |
| 事件总线           | [event_bus](https://pub.dev/packages/event_bus)              |
| 下拉刷新、上拉加载 | [flutter_easyrefresh](https://pub.dev/packages/flutter_easyrefresh) |
| 微光效果控件       | [shimmer](https://pub.dev/packages/shimmer)                  |
| 日期选择控件       | [flutter_datetime_picker](https://pub.dev/packages/flutter_datetime_picker) |
| HTML加载           | [flutter_html](https://pub.dev/packages/flutter_html)        |
| 权限申请           | [permission_handler](https://pub.dev/packages/permission_handler) |
| 保存图片到相册     | [image_gallery_saver](https://pub.dev/packages/image_gallery_saver) |
| Toast吐司          | [fluttertoast](https://pub.dev/packages/fluttertoast)        |
| 音乐播放           | [audioplayer](https://pub.dev/packages/audioplayer)          |

