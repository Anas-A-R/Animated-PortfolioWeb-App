import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HapticCircle extends StatefulWidget {
  @override
  State<HapticCircle> createState() => _HapticCircleState();
}

class _HapticCircleState extends State<HapticCircle> {
  double currRadius = 0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          currRadius = 7;
        });
      },
      onExit: (event) {
        setState(() {
          currRadius = 0;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 228, 205, 2),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: currRadius),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Icon(
              FontAwesomeIcons.play,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
