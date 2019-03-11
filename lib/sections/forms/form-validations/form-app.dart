import 'package:combine_mobile/sections/forms/form-validations/custom-form.dart';
import 'package:flutter/material.dart';

class FormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
        title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
          ),
          body: MyCustomForm(),
        ));
  }
}
