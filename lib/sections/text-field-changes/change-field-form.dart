import 'package:flutter/material.dart';

class ChangeFieldForm extends StatefulWidget {
  @override
  State createState() => ChangeFieldFormState();
}

class ChangeFieldFormState extends State<ChangeFieldForm> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: getBody(),
    );
  }

  Padding getBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (text) {
              print('Onchanged metod: $text');
            },
          ),
          TextField(
            controller: controller,
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    controller.addListener(printValues);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  printValues() {
    print('Second Text Field ${controller.text}');
  }
}
