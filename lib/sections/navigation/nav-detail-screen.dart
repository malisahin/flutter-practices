import 'package:flutter/material.dart';

class NavDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Hero(
              tag: 'imageHero',
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
          )),
    );
  }
}
