import 'package:flutter/material.dart';
import 'dart:math' as math;

class BackgroundBoxShape extends StatefulWidget {
  @override
  State<BackgroundBoxShape> createState() => _BackgroundBoxShapeState();
}

class _BackgroundBoxShapeState extends State<BackgroundBoxShape>
    with SingleTickerProviderStateMixin {
  late Animation animation;

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 5),
        reverseDuration: Duration(seconds: 5))
      ..forward();
    animation =
        Tween<double>(begin: math.pi, end: -math.pi).animate(controller);
        controller.addListener(() {
           if(controller.isCompleted){
          controller.reset();
        }
        if(controller.isDismissed){
          controller.forward();
        }
        });
       
    super.initState();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: animation.value,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.grey, width: 3),
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        );
      },
    );
  }
}
