import 'package:beaty_flutter/base_card.dart';
import 'package:flutter/material.dart';

class ShareCard extends BaseCard {
  @override
  _ShareCardState createState() => _ShareCardState();
}

class _ShareCardState extends BaseCardState {
  @override
  topTitle(String title) {
    return super.topTitle("分享得联名卡");
  }

  @override
  topTitle2(String title) {
    return super.topTitle2(" /第19期");
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle("分享给朋友最多得12天联名卡");
  }

  @override
  bottomContent() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(color: Color(0xfff6f7f9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: Image.network(
                    "http://www.devio.org/io/flutter_beauty/card_list.png")),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: bottomTitle("128643人 参与活动"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
