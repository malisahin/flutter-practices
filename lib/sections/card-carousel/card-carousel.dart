import 'package:flutter/material.dart';

class CardCarouselApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cards Example",
      home: CardCarouselPage(),
    );
  }
}

class CardCarouselPage extends StatefulWidget {
  @override
  _CardCarouselPageState createState() => _CardCarouselPageState();
}

class _CardCarouselPageState extends State<CardCarouselPage> {
  PageController _pageController;
  int currentPage = 0;
  double width = 0;
  double height = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: currentPage);
    print("Height: " + height.toString());
    print("Width: " + width.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(body: _getMainPageBody());
  }

  _getMainPageBody() {
    return Center(
      child: Container(
        child: PageView.builder(
          itemBuilder: (context, index) => _animateItemBuilder(index),
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              print("Height: " + height.toString());
              print("Width: " + width.toString());
              currentPage = value;
            });
          },
        ),
      ),
    );
  }

  _animateItemBuilder(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * height * 0.8,
            width: Curves.easeOut.transform(value) * width * 0.8,
            child: child,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        color: index % 2 == 0 ? Colors.purple : Colors.red,
        child: FlutterLogo(),
      ),
    );
  }
}
