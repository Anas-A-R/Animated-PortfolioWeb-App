
import 'package:cv/Components/about_component.dart';
import 'package:cv/Components/blog_component.dart';
import 'package:cv/Components/contact_component.dart';
import 'package:cv/Components/portfolio_component.dart';
import 'package:cv/Components/resume_component.dart';
import 'package:cv/Components/service_component.dart';
import 'package:cv/Components/testimonial_component.dart';
import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:cv/Reusability/animated_shape_container.dart';
import 'package:cv/Reusability/animated_textbox-slider.dart';
import 'package:cv/Reusability/gradient_button_container.dart';
import 'package:cv/Reusability/haptic_circle.dart';
import 'package:cv/Reusability/padded_icons.dart';
import 'package:cv/Reusability/tab_data_provider.dart';
import 'package:cv/Shapes/box_shape.dart';
import 'package:cv/Shapes/circle_grid_shape.dart';
import 'package:cv/Shapes/line_shape.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String tabData=context.watch<TabDataProvider>().tabData; 
    return Scaffold(
        backgroundColor: Color(0xffF1FAFF),
        body: Stack(
          children: [
            Positioned(
                top: 100,
                left: 50,
                child: LineShape(
                  width: 50,
                  strokeWidth: 5,
                  linecolor: Colors.grey,
                )),
                Positioned(
                bottom: 100,
                right: 50,
                child: LineShape(
                  width: 50,
                  strokeWidth: 5,
                  linecolor: Colors.grey,
                )),
            Positioned(
              bottom: 100,
              left: 100,
                child: CircleGridShape(
              height: 90,
              width: 60,
              itemCount: 20,
              crossAxisCount: 4,
              gap: 4,
              clr: Colors.grey,
            )),
            Positioned(
              top: 150,
              left: 450,
              child: BackgroundBoxShape()),
              Positioned(
              bottom: 100,
              right: 370,
              child: BackgroundBoxShape()),
            Positioned(
              top: 100,
              right: 50,
                child: CircleGridShape(
              height: 90,
              isAnimationHorizontal: false,
              width: 60,
              itemCount: 20,
              crossAxisCount: 4,
              gap: 4,
              clr: Colors.grey,
            )),
            
            SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset("assets/images/mylogo.png"),
                        ),
                        Row(
                          children: [
                            PaddedIcon(
                              ficon: FontAwesomeIcons.facebookF,
                              color: Colors.blue,
                              iconsize: 18,
                            ),
                            PaddedIcon(
                              ficon: FontAwesomeIcons.twitter,
                              color: Colors.cyan,
                              iconsize: 18,
                            ),
                            PaddedIcon(
                              ficon: FontAwesomeIcons.youtube,
                              color: Colors.red,
                              iconsize: 18,
                            ),
                            PaddedIcon(
                              ficon: FontAwesomeIcons.instagram,
                              color: Colors.redAccent,
                              iconsize: 18,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            AnimatedCircleCursorMouseRegion(
                              child: GradientButtonContainer(
                                width: 180,
                                height: 65,
                                title: "Download CV",
                                isGradientVertical: false,
                                onpressed: () {},
                                overlayColor: Colors.redAccent,
                                titleSize: 16,
                                clr: [
                                  Colors.red,
                                  Colors.red,
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      // height: 300,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "I'm",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.red),
                                    ),
                                    // child: Text(
                                    //   "I'm",
                                    //   style: TextStyle(
                                    //       color: Colors.red,
                                    //       fontSize: 30,
                                    //       fontWeight: FontWeight.w700),
                                    // ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Anas \nAbdul Razzaq",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 80,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Junior Flutter Apps(Web, Mobile & Desktop Apps) Developer",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: AnimatedCircleCursorMouseRegion(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          HapticCircle(),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Play Video",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Stack(
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        AnimatedShapeContainer(),
                                      ],
                                    )),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        height: 223,
                                        width: 300,
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                            child: Image.asset(
                                              "assets/images/anas.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        AnimatedTextBoxSlider(
                          clr: Colors.red,
                          text: "About me",
                          width: 180,
                          onpressed: () {
                            context.read<TabDataProvider>().changeTabData("About me");
                          },
                          tabData: tabData,
                          icon: FontAwesomeIcons.info,
                        ),
                        AnimatedTextBoxSlider(
                          clr: Colors.red,
                          text: "Resume",
                          width: 180,
                          onpressed: () {context.read<TabDataProvider>().changeTabData("Resume");},
                          tabData: tabData,
                          icon: FontAwesomeIcons.addressBook,
                        ),
                        AnimatedTextBoxSlider(
                          clr: Colors.red,
                          text: "Portfolio",
                          width: 180,
                          onpressed: () {context.read<TabDataProvider>().changeTabData("Portfolio");},
                          tabData: tabData,
                          icon: FontAwesomeIcons.thinkPeaks,
                        ),
                        AnimatedTextBoxSlider(
                          clr: Colors.red,
                          text: "Service",
                          width: 180,
                          onpressed: () {context.read<TabDataProvider>().changeTabData("Service");},
                          tabData: tabData,
                          icon: FontAwesomeIcons.gears,
                        ),
                        
                        AnimatedTextBoxSlider(
                          clr: Colors.red,
                          text: "Testimonial",
                          width: 180,
                          onpressed: () {context.read<TabDataProvider>().changeTabData("Testimonial");},
                          tabData: tabData,
                          icon: FontAwesomeIcons.star,
                        ),
                        AnimatedTextBoxSlider(
                          clr: Colors.red,
                          text: "Blog",
                          width: 180,
                          onpressed: () {context.read<TabDataProvider>().changeTabData("Blog");},
                          tabData: tabData,
                          icon: FontAwesomeIcons.blog,
                        ),
                        AnimatedTextBoxSlider(
                          clr: Colors.red,
                          text: "Contact",
                          width: 180,
                          onpressed: () {context.read<TabDataProvider>().changeTabData("Contact");},
                          tabData: tabData,
                          icon: FontAwesomeIcons.envelope,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  tabData=="About me"? AboutComponent():Container(),
                  tabData=="Resume"? ResumeComponent():Container(),
                  tabData=="Portfolio"? PortfolioComponent():Container(),
                  tabData=="Service"? ServiceComponent():Container(),
                  tabData=="Blog"? BlogComponent():Container(),
                  tabData=="Testimonial"? TestimonialComponent():Container(),
                  tabData=="Contact"? ContactComponent():Container(),

                  // BackgroundBoxShape(),

                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
