import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  bool state;
  CheckBox({super.key, this.state = false});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.state = !widget.state;
        });
      },
      child: Container(
        margin: EdgeInsets.all(25),
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black87, width: 1),
            borderRadius: BorderRadius.circular(4)),
        child: widget.state
            ? const Icon(
                Icons.check,
                color: Colors.greenAccent,
              )
            : null,
      ),
    );
  }
}
