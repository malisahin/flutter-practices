import 'package:combine_mobile/sections/drag-drop/drag-drop-sample.dart';
import 'package:flutter/material.dart';

class DragDropApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DragDropSample(),
      ),
    );
  }
}
