import 'package:cv/Reusability/info_indicator_one.dart';
import 'package:cv/Reusability/info_indicator_two.dart';
import 'package:cv/Reusability/text_block_one.dart';
import 'package:cv/Reusability/title_one.dart';
import 'package:flutter/material.dart';


class ResumeComponent extends StatelessWidget {
  const ResumeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      // height: 500,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Resume",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Combination of Skill\nand Experience",
            style: TextStyle(
                color: Colors.black,
                wordSpacing: 2,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                
                  child: Container(
                // height: 400,
                width: double.infinity,
                // color: Colors.cyan,
                child: Column(
                  children: [
                    TitleOne(
                      text: "Education",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //////////////////////////////////////////////////////
                    TextBlockOne(
                      mainText: "Bachelors of Information Technology",
                      subMainText: "2020-2024",
                      description: "University of the Punjab",
                      longText:
                          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextBlockOne(
                      mainText: "F.Sc (Pre Engineering)",
                      subMainText: "2018-2020",
                      description: "Govt. Islamia College Railway Road Lahore",
                      longText:
                          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextBlockOne(
                      mainText: "Matriculation",
                      subMainText: "2016-2018",
                      description: "Jinnah Islamia High School Shahdra Lahore",
                      longText:
                          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TitleOne(text: "Experience"),
                    SizedBox(
                      height: 30,
                    ),
                    TextBlockOne(
                      mainText: "Web Development",
                      subMainText: "2020-2022",
                      description: "Personal",
                      longText:
                          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextBlockOne(
                      mainText: "Flutter Apps Development",
                      subMainText: "2020-current",
                      description: "Personal",
                      longText:
                          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
                    ),
                  ],
                ),
              )),
              Flexible(
                  child: Container(
                padding: EdgeInsets.only(left: 30),
                // height: 400,
                width: double.infinity,
                // color: Colors.yellow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TitleOne(text: "Personal Skills"),
                    SizedBox(
                      height: 20,
                    ),
                    InfoIndicatorOne(
                      text: 'Time Management',
                      widthActual: 350,
                      widthTotal: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InfoIndicatorOne(
                      text: 'Efficiency',
                      widthActual: 400,
                      widthTotal: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InfoIndicatorOne(
                      text: 'Integrity',
                      widthActual: 380,
                      widthTotal: 400,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TitleOne(text: "Software Skills"),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Container(
                          child: InfoIndicatorTwo(
                            sliderSize: 150,
                            textSize: 20,
                            value: 90,
                            text: 'Flutter',
                          ),
                        )),
                        Expanded(
                            child: Container(
                          child: InfoIndicatorTwo(
                            sliderSize: 150,
                            textSize: 20,
                            value: 80,
                            text: 'Dart',
                          ),
                        )),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Container(
                          child: InfoIndicatorTwo(
                            sliderSize: 150,
                            textSize: 20,
                            value: 90,
                            text: 'After Effect',
                          ),
                        )),
                        Expanded(
                            child: Container(
                          child: InfoIndicatorTwo(
                            sliderSize: 150,
                            textSize: 20,
                            value: 80,
                            text: 'Blender',
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
