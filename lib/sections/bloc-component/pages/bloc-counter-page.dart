import 'package:flutter/material.dart';

class StreamCounterPage extends StatefulWidget {
  @override
  _StreamCounterPageState createState() => _StreamCounterPageState();
}

class _StreamCounterPageState extends State<StreamCounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Streams'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many  times: '),
            StreamBuilder<int>(
              initialData: 0,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Text(
                  '${snapshot.data}',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
