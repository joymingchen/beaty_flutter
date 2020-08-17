import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;
  Color bottomTitleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias, //抗锯齿
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            topContent(),
            bottomContent(),
          ],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 26, right: 20, bottom: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              topTitle(""),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: topTitle2(""),
              ),
            ],
          ),
          subTitle("")
        ],
      ),
    );
  }

  bottomContent() {
    return Container();
  }

  Widget subTitle(String title) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: subTitleColor,
          fontSize: 11,
        ),
      ),
    );
  }

  Widget bottomTitle(String title) {
    return Container(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: bottomTitleColor,
          fontSize: 10,
        ),
      ),
    );
  }

  topTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
    );
  }

  topTitle2(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 10,
        color: Colors.grey,
      ),
    );
  }
}
