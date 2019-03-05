import 'package:combine_mobile/sections/gestures/material-ripple/ripple-button.dart';
import 'package:flutter/material.dart';

class RippleButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Inkwell Demo';
    return MaterialApp(title: title, home: RippleButtonPage(title: title));
  }
}
