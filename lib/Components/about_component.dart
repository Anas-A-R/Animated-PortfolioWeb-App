import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:cv/Reusability/gradient_button_container.dart';
import 'package:cv/Reusability/two_text_about_me.dart';
import 'package:flutter/material.dart';


class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 20)
          ]),
      child: Row(
        children: [
          Expanded(
              child: Container(
            //about me first children of row
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  height: 500,
                  width: 300,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Image.asset("assets/images/anas.jpg")),
                ),
                Positioned(
                  top: 80,
                  right: 30,
                  child: Container(
                    height: 350,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TwoTextOfAboutMeWithDottedLine(
                            text: "Name",
                            subtext: "Anas Abdul Razzaq",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TwoTextOfAboutMeWithDottedLine(
                            text: "Skill",
                            subtext: "Flutter Apps",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TwoTextOfAboutMeWithDottedLine(
                            text: "Experience",
                            subtext: "3 Years",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TwoTextOfAboutMeWithDottedLine(
                            text: "Company",
                            subtext: "DevSinc",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TwoTextOfAboutMeWithDottedLine(
                            text: "Graduation",
                            subtext: "Punjab University Lahore",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          //about me second children of row
          Expanded(
              child: Container(
            // color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About me",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.red),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
                    style: TextStyle(
                        color: Colors.black,
                        wordSpacing: 2,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.I am Anas Abdul Razzaq,a Flutter Apps (Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: AnimatedCircleCursorMouseRegion(
                                child: GradientButtonContainer(
                                  width: 180,
                                  height: 65,
                                  title: "Download CV",
                                  isGradientVertical: false,
                                  onpressed: () {},
                                  overlayColor: Colors.blue,
                                  titleSize: 16,
                                  clr: [
                                    Colors.red,
                                    Colors.red,
                                  ],
                                ),
                              ),
                            ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
