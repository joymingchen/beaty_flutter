import 'package:beaty_flutter/base_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FreeCard extends BaseCard {
  @override
  _FreeCardState createState() => _FreeCardState();
}

const BOOK_LIST = [
  {'title': '暴力沟通', 'cover': '51VykQqGq9L._SY346_.jpg', 'price': '19.6'},
  {'title': '论中国', 'cover': '41APiBzC41L.jpg', 'price': '36.6'},
  {'title': '饥饿得盛世: 乾隆时代得得与失', 'cover': '51M6M87AXOL.jpg', 'price': '19.6'},
  {'title': '焚天之怒第4卷至大结局', 'cover': '51oIE7H5gnL.jpg', 'price': '56.9'}
];

class _FreeCardState extends BaseCardState {
  @override
  topTitle(String title) {
    return super.topTitle("免费听书馆");
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle("第 194 期");
  }

  @override
  bottomContent() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(child: _bookList()),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _bottomButton(),
            )
          ],
        ),
      ),
    );
  }

  _bookList() {
    return Container(
      child: GridView.count(
        padding: EdgeInsets.only(left: 20, right: 20),
        //行数
        crossAxisCount: 3,
        //水平间距
        crossAxisSpacing: 15,
        //垂直间距
        mainAxisSpacing: 10,
        //长宽比
        childAspectRatio: 0.46,
        children: BOOK_LIST.map((item) {
          return _item(item);
        }).toList(),
      ),
    );
  }

  Widget _item(Map<String, String> item) {
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                "http://www.devio.org/io/flutter_beauty/book_cover/${item["cover"]}",
                fit: BoxFit.cover,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white10,
                ),
                child: Icon(Icons.play_arrow),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(3),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(color: Colors.black38),
                  child: Text(
                    "原价 ${item["price"]}",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(2),
            child: Text(
              "${item["title"]}",
              style: TextStyle(color: Colors.black, fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  _bottomButton() {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.blue,
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "免费获取",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
