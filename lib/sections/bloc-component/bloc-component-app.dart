import 'package:combine_mobile/sections/bloc-component/widgets/bloc-provider.dart';
import 'package:flutter/material.dart';

class BlocComponentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Component',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        bloc: null,
        child: null,
      ),
    );
  }
}
