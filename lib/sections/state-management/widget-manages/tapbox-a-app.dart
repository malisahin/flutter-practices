import 'package:combine_mobile/sections/state-management/widget-manages/tapbox-a.dart';
import 'package:flutter/material.dart';

class TapBoxAApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tapBox-A',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TapBox-A'),
        ),
        body: Center(
          child: TapBoxA(),
        ),
      ),
    );
  }
}
