import 'package:combine_mobile/sections/state-management/mix-manages/tap-box-c.dart';
import 'package:flutter/material.dart';

class MixParentWidget extends StatefulWidget {
  @override
  State createState() => MixParentWidgetState();
}

class MixParentWidgetState extends State<MixParentWidget> {
  bool active = false;

  void handleTapBoxChanged(bool value) {
    setState(() {
      active = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBoxC(active: active, onChanged: handleTapBoxChanged),
    );
  }
}
