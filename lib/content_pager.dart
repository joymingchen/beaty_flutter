import 'package:flutter/material.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> pageChanged;

  final ContentPageController contentPageController;

  const ContentPager({Key key, this.pageChanged, this.contentPageController})
      : super(key: key);

  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  static List<Color> _colors = [
    Colors.blue,
    Colors.amber,
    Colors.red,
    Colors.greenAccent
  ];

  PageController _pageController = PageController(
    viewportFraction: 0.8,
  );

  @override
  void initState() {
    if (widget.contentPageController != null) {
      widget.contentPageController._pageController = _pageController;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: widget.pageChanged,
            children: [
              _content(0),
              _content(1),
              _content(2),
              _content(3),
            ],
          ),
        ),
      ],
    );
  }

  _content(int index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(color: _colors[index]),
      ),
    );
  }
}

//内容区域的控制器
class ContentPageController {
  PageController _pageController;

  jumpToPage(int page) {
    _pageController?.animateToPage(page,
        duration: Duration(milliseconds: 500), curve: Curves.linearToEaseOut);
  }
}
