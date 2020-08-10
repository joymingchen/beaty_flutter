import 'package:flutter/material.dart';

import 'base_card.dart';

class RecommendCard extends BaseCard {
  @override
  _RecommendCardState createState() {
    return _RecommendCardState();
  }
}

class _RecommendCardState extends BaseCardState {
  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  topTitle(String title) {
    return super.topTitle("本周推荐");
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle("送你一天无限卡，全场书籍免费读");
  }

  @override
  bottomContent() {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(top: 10),
      child: Image.network(
        "http://www.devio.org/io/flutter_beauty/card_1.jpg",
        fit: BoxFit.cover,
      ),
    ));
  }
}
