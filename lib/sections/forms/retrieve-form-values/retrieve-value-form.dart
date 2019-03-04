import 'package:flutter/material.dart';

class RetrieveValueForm extends StatefulWidget {
  @override
  State createState() => RetrieveValueFormState();
}

class RetrieveValueFormState extends State<RetrieveValueForm> {
  final input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve text input'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(controller: input)),
      floatingActionButton: actionButton,
    );
  }

  @override
  void dispose() {
    input.dispose();
    super.dispose();
  }

  FloatingActionButton get actionButton {
    return FloatingActionButton(
      onPressed: () => showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(input.text),
            );
          }),
      tooltip: 'Show me the values',
      child: Icon(Icons.text_fields),
    );
  }
}
