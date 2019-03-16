import 'package:combine_mobile/sections/navigation/nav-detail-screen.dart';
import 'package:flutter/material.dart';

class NavMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (route) {
              print(route);
              return NavDetailScreen();
            }));
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.network('https://picsum.photos/250?image=9'),
          )),
    );
  }
}
