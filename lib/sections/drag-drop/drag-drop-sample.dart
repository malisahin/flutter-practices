import 'package:combine_mobile/sections/drag-drop/drag-box.dart';
import 'package:flutter/material.dart';

class DragDropSample extends StatefulWidget {
  @override
  State createState() => DragDropSampleState();
}

class DragDropSampleState extends State<DragDropSample> {
  Color caughtColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DragBox(Offset(0, 0), 'Box One', Colors.lime),
        DragBox(Offset(100, 0), 'Box Two', Colors.orange),
        DragBox(Offset(200, 0), 'Box Three', Colors.red),
      ],
    );
  }
}
