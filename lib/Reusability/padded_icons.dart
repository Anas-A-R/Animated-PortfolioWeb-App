
import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';

class PaddedIcon extends StatelessWidget {
  final IconData ficon;
  final double? padding;
  final Color color;
  final double iconsize;

  PaddedIcon({required this.ficon, required this.color, this.padding, required this.iconsize});

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: Padding(
        padding: padding != null ? EdgeInsets.all(padding!) : EdgeInsets.all(8.0),
        child: Icon(
          ficon,
          color: color,
          size: iconsize,
        ),
      ),
    );
  }
}
