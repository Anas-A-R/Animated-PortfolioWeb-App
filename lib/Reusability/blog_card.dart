
import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatefulWidget {
  final String imageName;
  final String heading;
  final String text;
  BlogCard({required this.imageName, required this.heading, required this.text});
  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
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
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/${widget.imageName}",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              widget.heading,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.text,
                              style: TextStyle(
                                  color: Colors.black,
                                  wordSpacing: 2,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
