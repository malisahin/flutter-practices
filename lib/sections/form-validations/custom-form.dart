import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getTextFormField(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: getSubmitButton(),
          )
        ],
      ),
    );
  }

  TextFormField getTextFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
    );
  }

  RaisedButton getSubmitButton() {
    return RaisedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Proccessing Data')));
        }
      },
      child: Text('Submit'),
    );
  }
}
