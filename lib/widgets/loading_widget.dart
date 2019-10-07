/// 列表加载过程动画

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(5, (index) => renderChildWidget(context)),
            ),
          ),
        ),
      ),
    );
  }

  Widget renderChildWidget(context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: Divider.createBorderSide(
            context,
            width: 0.7,
            color: Colors.grey,
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 30),
            child: Container(
              width: double.infinity,
              height: 6.5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 30),
            child: Container(
              width: double.infinity,
              height: 6.5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 30),
            child: Container(
              width: double.infinity,
              height: 6.5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 30),
            child: Container(
              width: double.infinity,
              height: 6.5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
