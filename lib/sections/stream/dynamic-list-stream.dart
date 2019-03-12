import 'dart:async';
import 'dart:convert';
import 'package:combine_mobile/models/e-request-method.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DynamicListStreamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo List',
        theme: ThemeData(primarySwatch: Colors.green),
        home: DynamicListStream());
  }
}

class DynamicListStream extends StatefulWidget {
  @override
  State createState() => DynamicListStreamState();
}

class DynamicListStreamState extends State<DynamicListStream> {
  StreamController<TodoList> streamController;
  List<TodoList> list = [];

  @override
  void initState() {
    super.initState();
    streamController = StreamController.broadcast();
    streamController.stream.listen((p) => setState(() => list.add(p)));
  }

  load(StreamController streamController) async {
    String url = "https://jsonplaceholder.typicode.com/todos";
    var client = new http.Client();
    var request =
        new http.Request(RequestMethod.GET.toString(), Uri.parse(url));
    var streamedResult = await client.send(request);

    streamedResult.stream
        .transform(utf8.decoder)
        .transform(json.decoder)
        .expand((e) => e)
        .map((map) => TodoList.fromJsonToMap(map));
  }

  @override
  void dispose() {
    super.dispose();
    streamController?.close();
    streamController = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('todo List'),
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => makeElement(index),
        ),
      ),
    );
  }

  Widget makeElement(int index) {
    if (index >= list.length) return null;
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Image.network(
            list[index].title,
            width: 15,
            height: 15,
          ),
          Text(list[index].id.toString())
        ],
      ),
    );
  }
}

class TodoList {
  final int userId;
  final int id;
  final String title;
  final String completed;

  TodoList.fromJsonToMap(Map map)
      : userId = map['userId'],
        id = map['id'],
        title = map['title'],
        completed = map['completed'];
}
