
import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';


class HapticTextButton extends StatelessWidget {
  final String text;
  final Color? clr;
  final double size;
  final Function() onpressed;
  HapticTextButton({required this.text, required this.clr, required this.size, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: TextButton(
          onPressed:onpressed,
          child: Text(
            text,
            style: TextStyle(
                fontSize: size, fontWeight: FontWeight.w600, color:clr?? Colors.black),
          )),
    );
  }
}
