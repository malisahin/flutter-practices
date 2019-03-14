import 'package:flutter/material.dart';

class TapBoxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapBoxC({Key key, this.active, @required this.onChanged});

  @override
  State createState() => TapBoxCState();
}

class TapBoxCState extends State<TapBoxC> {
  bool highlight = false;

  void handleTapDown(TapDownDetails details) {
    setState(() {
      print(details.globalPosition);
      this.highlight = true;
    });
  }

  void handleTapUp(TapUpDetails details) {
    setState(() {
      print(details.globalPosition);
      this.highlight = false;
    });
  }

  void handleTapCancel() {
    setState(() {
      this.highlight = false;
    });
  }

  void handleTap() {
    this.widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: handleTapDown,
      onTapUp: handleTapUp,
      onTap: handleTap,
      onTapCancel: handleTapCancel,
      child: Container(
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen : Colors.grey,
            border:
                highlight ? Border.all(color: Colors.teal, width: 10) : null),
      ),
    );
  }
}
