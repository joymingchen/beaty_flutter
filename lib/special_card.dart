import 'package:beaty_flutter/base_card.dart';
import 'package:flutter/material.dart';

class SpecialCard extends BaseCard {
  @override
  _SpecialCardState createState() => _SpecialCardState();
}

class _SpecialCardState extends BaseCardState {
  @override
  void initState() {
    bottomTitleColor = Colors.blue;
    super.initState();
  }

  @override
  topContent() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 66, right: 66, top: 36, bottom: 30),
          decoration: BoxDecoration(color: Color(0xfffffcf7)),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.grey,
                  offset: Offset(0, 10),
                )
              ],
            ),
            child: Image.network(
              "http://www.devio.org/io/flutter_beauty/changan_book.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Color(0xfff7f3ea)),
          padding: EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "长安十二时辰···",
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                  ),
                  Text(
                    "马伯庸",
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffd9bc82),
                      Color(0xffecd9ae),
                    ],
                  ),
                ),
                child: Text(
                  "分享免费领",
                  style: TextStyle(color: Color(0xff4f3b1a), fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bottomContent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //水平撑开
        mainAxisAlignment: MainAxisAlignment.spaceAround, //均匀分布
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "http://www.devio.org/io/flutter_beauty/double_quotes.jpg",
                  width: 20,
                  height: 20,
                ),
                Text("揭露历史真相"),
              ],
            ),
          ),
          bottomTitle("更多免费好书领不停 >"),
        ],
      ),
    );
  }
}
