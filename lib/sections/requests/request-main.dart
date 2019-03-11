import 'package:combine_mobile/sections/requests/todo-list-data.dart';
import 'package:flutter/material.dart';

class RequestMainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo List",
      home: TodoListData(),
    );
  }
}
