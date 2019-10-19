/// 圆形Header

import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class CircleHeader extends StatefulWidget {
  final LinkHeaderNotifier linkNotifier;

  const CircleHeader(this.linkNotifier, {Key key}) : super(key: key);

  @override
  CircleHeaderState createState() {
    return CircleHeaderState();
  }
}

class CircleHeaderState extends State<CircleHeader> {
  // 指示器值
  double _indicatorValue = 0.0;

  RefreshMode get _refreshState => widget.linkNotifier.refreshState;

  double get _pulledExtent => widget.linkNotifier.pulledExtent;

  @override
  void initState() {
    super.initState();
    widget.linkNotifier.addListener(onLinkNotify);
  }

  void onLinkNotify() {
    setState(() {
      if (_refreshState == RefreshMode.armed ||
          _refreshState == RefreshMode.refresh) {
        _indicatorValue = null;
      } else if (_refreshState == RefreshMode.refreshed ||
          _refreshState == RefreshMode.done) {
        _indicatorValue = 1.0;
      } else {
        if (_refreshState == RefreshMode.inactive) {
          _indicatorValue = 0.0;
        } else {
          double indicatorValue = _pulledExtent / 70.0 * 0.8;
          _indicatorValue = indicatorValue < 0.8 ? indicatorValue : 0.8;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          right: 20.0,
        ),
        width: 24.0,
        height: 24.0,
        child: CircularProgressIndicator(
          value: _indicatorValue,
          valueColor: AlwaysStoppedAnimation(Colors.black),
          strokeWidth: 2.4,
        ),
      ),
    );
  }
}
