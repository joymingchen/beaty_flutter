import 'package:beaty_flutter/custom_appbar.dart';
import 'package:beaty_flutter/free_card.dart';
import 'package:beaty_flutter/recommend_card.dart';
import 'package:beaty_flutter/share_card.dart';
import 'package:beaty_flutter/special_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> pageChanged;

  final ContentPageController contentPageController;

  const ContentPager({Key key, this.pageChanged, this.contentPageController})
      : super(key: key);

  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  PageController _pageController = PageController(
    viewportFraction: 0.8,
  );

  @override
  void initState() {
    if (widget.contentPageController != null) {
      widget.contentPageController._pageController = _pageController;
    }
    setSystemStatusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: widget.pageChanged,
            children: [
              _content(RecommendCard()),
              _content(ShareCard()),
              _content(FreeCard()),
              _content(SpecialCard()),
            ],
          ),
        ),
      ],
    );
  }

  _content(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget,
    );
  }
}

void setSystemStatusBar() {
  SystemUiOverlayStyle style = SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF000000),
    systemNavigationBarDividerColor: null,
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );

  SystemChrome.setSystemUIOverlayStyle(style);
}

//内容区域的控制器
class ContentPageController {
  PageController _pageController;

  jumpToPage(int page) {
    _pageController?.animateToPage(page,
        duration: Duration(milliseconds: 500), curve: Curves.linearToEaseOut);
  }
}
