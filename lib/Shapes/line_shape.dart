import 'package:flutter/material.dart';
import 'dart:math' as math;

class LineShape extends StatefulWidget {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? linecolor;
  final StrokeCap? capStyle;

  LineShape(
      {this.width,
      this.height,
      this.strokeWidth,
      this.linecolor,
      this.capStyle});
  @override
  State<LineShape> createState() => _LineShapeState();
}

class _LineShapeState extends State<LineShape>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        reverseDuration: const Duration(seconds: 5),
        duration: Duration(seconds: 5))
      ..forward();
    animation =
        Tween<double>(begin: math.pi, end: -math.pi).animate(controller);
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reset();
      }
      if (controller.isDismissed) {
        controller.forward();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: animation.value,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: widget.height,
            width: widget.width,
            child: CustomPaint(
              painter: LinePainter(
                  strokeWidth: widget.strokeWidth,
                  linecolor: widget.linecolor,
                  capStyle: widget.capStyle),
            ),
          ),
        );
      },
    );
  }
}

class LinePainter extends CustomPainter {
  final double? strokeWidth;
  final Color? linecolor;
  final StrokeCap? capStyle;
  LinePainter({
    this.strokeWidth,
    this.linecolor,
    this.capStyle,
  });
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
      ..strokeWidth = strokeWidth ?? 10
      ..color = linecolor ?? Colors.red
      ..strokeCap = capStyle ?? StrokeCap.round;
    canvas.drawLine(Offset(size.width / 100, size.height * 1 / 2),
        Offset(size.width, size.height * 1 / 2), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }
}
