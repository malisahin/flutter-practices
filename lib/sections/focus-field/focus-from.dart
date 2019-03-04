import 'package:flutter/material.dart';

class FocusForm extends StatefulWidget {
  @override
  State createState() => FocusFormState();
}

class FocusFormState extends State<FocusForm> {
  FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field Focus'),
      ),
      body: getBody(),
      floatingActionButton: getActionButton(),
    );
  }

  Padding getBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(autofocus: true),
          TextField(
            focusNode: focusNode,
          )
        ],
      ),
    );
  }

  FloatingActionButton getActionButton() {
    return FloatingActionButton(
        onPressed: () => FocusScope.of(context).requestFocus(focusNode),
        tooltip: 'Focus second text field',
        child: Icon(Icons.edit));
  }

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
}
