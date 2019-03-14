import 'package:combine_mobile/sections/state-management/parent-manages/parent-widget.dart';
import 'package:flutter/material.dart';

class ParentWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tapBox-B',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TapBox-B'),
        ),
        body: Center(
          child: ParentWidget(),
        ),
      ),
    );
  }
}
