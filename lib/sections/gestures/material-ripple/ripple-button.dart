import 'package:flutter/material.dart';

class RippleButtonPage extends StatelessWidget {
  String title;

  RippleButtonPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
