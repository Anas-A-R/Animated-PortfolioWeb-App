
import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';

class AnimatedOverlayContainer extends StatefulWidget {
  final String mainText;
  final String subText;
  final String index;

  AnimatedOverlayContainer(
      {required this.mainText, required this.subText, required this.index,});

  @override
  State<AnimatedOverlayContainer> createState() =>
      _AnimatedOverlayContainerState();
}

class _AnimatedOverlayContainerState extends State<AnimatedOverlayContainer>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  bool isHovered = false;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 100),
        reverseDuration: const Duration(milliseconds: 100));
    animation = Tween<double>(begin: 0.1, end: 0.8).animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovered = true;
              controller.forward();
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
              controller.reverse();
            });
          },
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.deepPurple.withOpacity(animation.value),
                            BlendMode.srcATop),
                        image: AssetImage("assets/images/${widget.index}"),
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high)),
                child: isHovered
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.mainText,
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.subText,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    : Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}
