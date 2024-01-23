import 'package:flutter/material.dart';

class CircleGridShape extends StatefulWidget {
  final double height;
  final double width;
  final Color? clr;
  final int? crossAxisCount;
  final int? itemCount;
  final bool? isAnimationHorizontal;
  final double? gap;

  CircleGridShape(
      {required this.height,
      required this.width,
      this.clr,
      this.crossAxisCount,
      this.itemCount,
      this.isAnimationHorizontal,
      this.gap});

  @override
  State<CircleGridShape> createState() => _CircleGridShapeState();
}

class _CircleGridShapeState extends State<CircleGridShape>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 5),
        reverseDuration: Duration(seconds: 5))
      ..forward();
    animation = Tween<double>(begin: 0, end: -100).animate(controller);
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reverse();
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
        return Transform.translate(
          offset: widget.isAnimationHorizontal ?? true
              ? Offset(animation.value, 0)
              : Offset(0, animation.value),
          child: Container(
            height: widget.height,
            width: widget.width,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: widget.crossAxisCount ?? 4),
              itemCount: widget.itemCount ?? 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(widget.gap ?? 2),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: widget.clr),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
