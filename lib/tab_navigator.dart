import 'package:beaty_flutter/content_pager.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;

  final ContentPageController contentPageController = ContentPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xffedeef0),
            Color(0xffe6e7e9),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: ContentPager(
          contentPageController: contentPageController,
          pageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          contentPageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          _bottomItem("人生", Icons.folder, 0),
          _bottomItem("如戏", Icons.explore, 1),
          _bottomItem("全靠", Icons.donut_small, 2),
          _bottomItem("演技", Icons.dashboard, 3),
        ],
      ),
    );
  }

  //封装底部item
  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        title: Text(
          title,
          style: TextStyle(
              color: index == _currentIndex ? _activeColor : _defaultColor),
        ),
        icon: Icon(
          icon,
          color: _defaultColor,
        ),
        activeIcon: Icon(
          icon,
          color: _activeColor,
        ));
  }
}
