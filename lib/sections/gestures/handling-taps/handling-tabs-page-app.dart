import 'package:combine_mobile/sections/gestures/handling-taps/handling-tabs-page.dart';
import 'package:flutter/material.dart';

class HandlingTabsPageApp extends StatelessWidget {
  final title = 'Gesture';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: title, home: HandlingTabsPage(title: title));
  }
}
