import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedShapeContainer extends StatefulWidget {
  const AnimatedShapeContainer({
    super.key,
  });

  @override
  State<AnimatedShapeContainer> createState() => _AnimatedShapeContainerState();
}

class _AnimatedShapeContainerState extends State<AnimatedShapeContainer>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 5),
        reverseDuration: Duration(seconds: 5));
    controller.forward();
    animation = Tween<double>(begin: -math.pi / 4, end: -math.pi / 3)
        .animate(controller);
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
        return Transform.rotate(
          angle: animation.value,
          child: Container(
            height: 230,
            width: 300,
            color: Color.fromARGB(255, 228, 205, 2),
          ),
        );
      },
    );
  }
}
