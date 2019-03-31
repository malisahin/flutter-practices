import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.cyan,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
