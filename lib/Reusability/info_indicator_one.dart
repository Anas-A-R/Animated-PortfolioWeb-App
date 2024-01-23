import 'package:flutter/material.dart';

class InfoIndicatorOne extends StatefulWidget {
  final String text;
  final double widthActual;
  final double widthTotal;
  final int? animationDuration;

  InfoIndicatorOne(
      {required this.text,
      required this.widthActual,
      required this.widthTotal,
      this.animationDuration});

  @override
  State<InfoIndicatorOne> createState() => _InfoIndicatorOneState();
}

class _InfoIndicatorOneState extends State<InfoIndicatorOne>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: widget.animationDuration ?? 1),
        reverseDuration: Duration(seconds: widget.animationDuration ?? 1))
      ..forward();
    animation =
        Tween<double>(begin: 1, end: widget.widthActual).animate(controller);
    super.initState();
    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return  Container(
            height: 5,
            width: animation.value,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          );
          },
          
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          height: 5,
          width: widget.widthTotal,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        )
      ],
    );
  }
}
