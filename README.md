# flutter_one_app

- 「ONE·一个」是由韩寒监制 ，原《独唱团》主创成员共同制作的一款文艺生活App ，官网地址：[「ONE·一个」](http://wufazhuce.com/)。此项目为高仿 ，仅供学习交流使用
- 此项目中的数据均来自[one一个接口API](http://www.limuyang.cc/one-api-collect/#/?id=one%c2%b7%e4%b8%80%e4%b8%aa)，仅供学习交流使用，请勿滥用
- 项目适合Flutter的练手学习，覆盖了各种基本控件使用、下拉刷新上拉加载、HTML解析、音乐播放、图片预览下载、权限申请等


## APK下载体验
- [app-release.apk](https://github.com/ijoutop/flutter-one-app/raw/master/apk/app-release.apk)
## 浏览器扫码下载
![app-release.apk](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/qrcode.png)

## 运行截图

| ![ONE首页](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-52-11.png) | ![ONE首页-快速索引列表](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-52-25.png) | ![ONE首页-ToolBar展开列表](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-52-43.png) |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
|                           ONE首页                            |                     ONE首页-快速索引列表                     |                   ONE首页-ToolBar展开列表                    |
| ![ONE首页-ToolBar展开列表-日期选择](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-52-49.png) | ![ALL页面](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-00.png) | ![ALL页面-热门作者](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-05.png) |
|               ONE首页-ToolBar展开列表-日期选择               |                           ALL页面                            |                       ALL页面-热门作者                       |
| ![ME页面](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-09.png) | ![阅读详情](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-17.png) | ![阅读详情-评论](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-37.png) |
|                            ME页面                            |                           阅读详情                           |                        阅读详情-评论                         |
| ![分类-图文](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-48.png) | ![分类-问答](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-53-53.png) | ![分类-阅读](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-12.png) |
|                          分类-图文                           |                          分类-问答                           |                          分类-阅读                           |
| ![分类-连载](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-16.png) | ![分类-音乐](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-20.png) | ![分类-阅读](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-10-19_14-54-35.png) |
|                          分类-连载                           |                          分类-音乐                           |                        分类-图文详情                         |
| ![图片预览](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-12-10_02-05-19.png) | ![图片缩放](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-12-10_02-07-00.png) | ![图片下载](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-12-10_02-05-35.png) |
|                           图片预览                           |                           图片缩放                           |                           图片下载                           |
| ![搜索](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-12-10_02-07-12.png) | ![音乐详情-播放](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-12-10_02-13-11.png) | ![热门作者动态](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-12-10_02-13-36.png) |
|                             搜索                             |                        音乐详情-播放                         |                         热门作者动态                         |
| ![专题详情](https://github.com/ijoutop/flutter-one-app/blob/master/screenshots/Snipaste_2019-12-10_02-07-22.png) |                                                              |                                                              |
|                           专题详情                           |                                                              |                                                              |

### 使用到的第三方插件


| 名称                       | 地址                                                         |
| :------------------------- | :----------------------------------------------------------- |
| 网络请求                   | [dio](https://pub.dev/packages/dio)                          |
| 网络图片缓存               | [cached_network_image](https://pub.dev/packages/cached_network_image) |
| 图片加载(可定义缩放等功能) | [extended_image](https://pub.dev/packages/extended_image)    |
| 事件总线                   | [event_bus](https://pub.dev/packages/event_bus)              |
| 下拉刷新、上拉加载         | [flutter_easyrefresh](https://pub.dev/packages/flutter_easyrefresh) |
| 微光效果控件               | [shimmer](https://pub.dev/packages/shimmer)                  |
| 日期选择控件               | [flutter_datetime_picker](https://pub.dev/packages/flutter_datetime_picker) |
| HTML加载                   | [flutter_html](https://pub.dev/packages/flutter_html)        |
| 网页加载                   | [webview_flutter](https://pub.dev/packages/webview_flutter)  |
| 权限申请                   | [permission_handler](https://pub.dev/packages/permission_handler) |
| 保存图片到相册             | [image_downloader](https://pub.dev/packages/image_downloader) |
| Toast吐司                  | [fluttertoast](https://pub.dev/packages/fluttertoast)        |
| 音乐播放                   | [audioplayer](https://pub.dev/packages/audioplayer)          |

### 小结

项目中音乐播放源为http url，Android 9.0/P和iOS禁止从非https网址加载，故需更改 App 的网络安全配置以允许此类连接

#### Android

在 res 下新增一个 xml 目录，创建[network_security_config.xml](https://github.com/ijoutop/flutter-one-app/blob/master/android/app/src/main/res/xml/network_security_config.xml)文件

```xml
<?xml version="1.0" encoding="utf-8"?>
<network-security-config>
    <base-config cleartextTrafficPermitted="true" />
</network-security-config>
```

在[AndroidManifest.xml](https://github.com/ijoutop/flutter-one-app/blob/master/android/app/src/main/AndroidManifest.xml)文件下的application标签增加以下属性

```xml
<application
...
 android:networkSecurityConfig="@xml/network_security_config"
...
/>
```

#### iOS

在[Info.plist](https://github.com/ijoutop/flutter-one-app/blob/master/ios/Runner/Info.plist)下编辑

```xml
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```


