import 'package:combine_mobile/sections/state-management/parent-manages/tap-box-b.dart';
import 'package:flutter/material.dart';

// ignore: slash_for_doc_comments
/**
 *  @author: mali.sahin on 14.03.2019.
 */

class ParentWidget extends StatefulWidget {
  @override
  ParentWidgetState createState() => ParentWidgetState();
}

class ParentWidgetState extends State<ParentWidget> {
  bool active = false;

  void handleTapboxChanged(bool value) {
    setState(() {
      active = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBoxB(
        active: active,
        onChanged: handleTapboxChanged,
      ),
    );
  }
}
