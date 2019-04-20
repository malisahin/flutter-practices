import 'package:flutter/material.dart';

class LayoutBuilderDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Layout Builder", home: LayoutBuilderDemo());
  }
}

class LayoutBuilderDemo extends StatefulWidget {
  @override
  _LayoutBuilderDemoState createState() => _LayoutBuilderDemoState();
}

class _LayoutBuilderDemoState extends State<LayoutBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final Orientation orientation = MediaQuery.of(context).orientation;
    final bool useMobileLayout = shortestSide < 600;
    print("SHORTEST SIDE $shortestSide");
    return Scaffold(
      appBar: AppBar(title: Text("Layout Builder")),
      body: useMobileLayout
          ? gridViewBuilder(2, orientation)
          : gridViewBuilder(4, orientation),
    );
  }

  gridViewBuilder(int axisCount, Orientation orientation) {
    axisCount *= orientation == Orientation.landscape ? 2 : 1;
    return paddingGenerator(axisCount);
  }

  Padding paddingGenerator(int axisCount) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: GridView.count(
            crossAxisCount: axisCount,
            childAspectRatio: 1,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: List.generate(100, (index) {
              return Card(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red[100 * (index % 9)],
                  child: Text('$index'),
                ),
              );
            })));
  }
}
