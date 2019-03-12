import 'package:flutter/material.dart';

class GridSamplePage extends StatefulWidget {
  @override
  State createState() => GridSamplePageState();
}

class GridSamplePageState extends State<GridSamplePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: buildPhoneGridView(),
    );
  }

  GridView buildPhoneGridView() {
    return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        children: List.generate(100, (index) {
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text('grid item $index'),
            ),
          );
        }));
  }
}
