import 'package:flutter/material.dart';

class HorizontalListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HorizontalListView(), title: "Horizontal List View");
  }
}

class HorizontalListView extends StatefulWidget {
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: _carouselImages(),
      ),
    );
  }

  ListView _carouselImages() {
    final screenSize = MediaQuery.of(context).size;

    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(5),
      shrinkWrap: true,
      children: <Widget>[
        Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.8,
          color: Colors.red,
        ),
        Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.8,
          color: Colors.blue,
        ),
        Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.8,
          color: Colors.black54,
        ),
        Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.8,
          color: Colors.green,
        ),
        Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.8,
          color: Colors.yellowAccent,
        )
      ],
    );
  }
}
