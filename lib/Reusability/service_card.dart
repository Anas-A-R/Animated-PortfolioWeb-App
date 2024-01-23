
import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatefulWidget {
  final String pName;
  final String pDescription;
  ServiceCard({required this.pName, required this.pDescription});
  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedCircleCursorMouseRegion(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  isHovered
                      ? BoxShadow(
                          blurRadius: 7,
                          spreadRadius: 8,
                          color: Colors.black.withOpacity(0.2),
                        )
                      : BoxShadow(
                          blurRadius: 7,
                          spreadRadius: 8,
                          color: Colors.black.withOpacity(0.05),
                        ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 228, 205, 2),
                      ),
                      child: Icon(
                        Icons.dashboard_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Text(
                      widget.pName,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    Text(
                      widget.pDescription,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
