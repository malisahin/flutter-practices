import 'package:flutter/material.dart';

class TapBoxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapBoxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  void handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'Active' : 'InActive',
            style: TextStyle(fontSize: 32, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ),
        width: 200,
        height: 200,
        decoration:
            BoxDecoration(color: active ? Colors.lightGreen : Colors.grey),
      ),
    );
  }
}
