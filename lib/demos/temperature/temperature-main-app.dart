import 'package:combine_mobile/demos/temperature/temperature-app.dart';
import 'package:flutter/material.dart';

class TemperatureMainApp extends StatelessWidget {
  @override
  State createState() {}

  @override
  build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: TemperatureApp(),
    );
  }
}
