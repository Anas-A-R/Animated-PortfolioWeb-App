
import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';

class AnimatedTextBoxSlider extends StatefulWidget {
  final String text;
  final Color clr;
  final IconData icon;
  final double width;
  final Function() onpressed;
  final String tabData;

  AnimatedTextBoxSlider(
      {required this.text,
      required this.clr,
      required this.icon,
      required this.width,
      required this.onpressed,
      required this.tabData});
  @override
  State<AnimatedTextBoxSlider> createState() => _AnimatedTextBoxSliderState();
}

class _AnimatedTextBoxSliderState extends State<AnimatedTextBoxSlider> {
  bool showtext = false;
  bool prevSelected = false;

  double calculateWidth() {
    if (showtext) {
      return widget.width ?? 180;
    } else {
      if (widget.tabData == widget.text) {
        setState(() {
          showtext = true;
        });
        return widget.width ?? 180;
      } else {
        return 80;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tabData != widget.text && prevSelected == true) {
      setState(() {
        showtext = false;
        prevSelected = false;
      });
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.onpressed();
          prevSelected = true;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              showtext = true;
            });
          },
          onExit: (event) {
            if (widget.tabData != widget.text) {
              setState(() {
                showtext = false;
              });
            }
          },
          child: AnimatedCircleCursorMouseRegion(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              height: 80,
              width: calculateWidth(),
              decoration: BoxDecoration(
                color:
                    widget.tabData == widget.text ? Colors.red : Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 20,
                      spreadRadius: 10)
                ],
              ),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        widget.icon,
                        color: widget.tabData == widget.text
                                      ? Colors.white
                                      :widget.clr,
                        size: 25,
                      ),
                      showtext
                          ? SizedBox(
                              width: 20,
                            )
                          : Container(),
                      showtext
                          ? Text(
                              widget.text,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: widget.tabData == widget.text
                                      ? Colors.white
                                      : Colors.black),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
