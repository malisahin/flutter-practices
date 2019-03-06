import 'package:combine_mobile/models/constants.dart';
import 'package:combine_mobile/sections/routing/redirect/first-page.dart';
import 'package:combine_mobile/sections/routing/redirect/second-page.dart';
import 'package:combine_mobile/sections/routing/redirect/third-page.dart';
import 'package:flutter/material.dart';

class DirectionHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        Constants.FIRST_PAGE_URL: (BuildContext context) => FirstPage(),
        Constants.SECOND_PAGE_URL: (BuildContext context) => SecondPage(),
        Constants.THIRD_PAGE_URL: (BuildContext context) => ThirdPage()
      },
      home: FirstPage(),
    );
  }
}
