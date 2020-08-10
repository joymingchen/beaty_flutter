import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white70),
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      margin: EdgeInsets.fromLTRB(20, paddingTop + 5, 20, 5),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Expanded(
            child: Text(
              "长安十二时辰",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          Container(
              width: 1,
              height: 18,
              color: Colors.grey,
              margin: EdgeInsets.only(right: 10)),
          Container(
            child: Text(
              "书城",
              style: TextStyle(fontSize: 13, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
