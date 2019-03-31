import 'package:combine_mobile/sections/layout/rows-and-columns.dart';
import 'package:flutter/material.dart';

class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rows & Columns'),
        ),
        body: RowsAndColumns(),
      ),
    );
  }
}
