import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF18D191)),
          child: Icon(
            Icons.whatshot,
            color: Colors.white,
          ),
        ),
        /*Container(
            margin: EdgeInsets.only(right: 50.0, top: 50.0),
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Container())*/
      ],
    );
  }
}
