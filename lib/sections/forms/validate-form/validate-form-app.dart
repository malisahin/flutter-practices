import 'package:combine_mobile/sections/forms/validate-form/validate-form-input-box.dart';
import 'package:flutter/material.dart';

class ValidateFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Boxes',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: ValidateFormInputBox(),
    );
  }
}
