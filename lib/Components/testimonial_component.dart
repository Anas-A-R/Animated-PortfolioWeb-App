import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv/Reusability/testimonial_slider.dart';
import 'package:flutter/material.dart';

class TestimonialComponent extends StatelessWidget {
  List<Map<String, dynamic>> testimonialList = [
    {
      "customerName": "Ali",
      "customerView":
          "Hi! I am Ali,a graphic designer.I have worked on many projects at national and international level.",
      "customerPassion": "Graphic Designer",
      "customerImagePath": "assets/images/anas.jpg",
    },
    {
      "customerName": "Ahmad",
      "customerView":
          "Hi! I am Ahmad,an App developer.I have worked on many projects at national and international level.",
      "customerPassion": "App Developer",
      "customerImagePath": "assets/images/mylogo.png",
    },
    {
      "customerName": "Fahad",
      "customerView":
          "Hi! I am Fahad,a full stack web developer.I have worked on many projects at national and international level.",
      "customerPassion": "Web Developer",
      "customerImagePath": "assets/images/anas.jpg",
    },
    {
      "customerName": "Umair",
      "customerView":
          "Hi! I am Umair,an AI specialist.I have worked on many projects at national and international level.",
      "customerPassion": "AI Specialist",
      "customerImagePath": "assets/images/mylogo.png",
    },
    {
      "customerName": "Raza",
      "customerView":
          "Hi! I am Raza,a specialist data scrature.I have worked on many projects at national and international level.",
      "customerPassion": "Data Scrature",
      "customerImagePath": "assets/images/anas.jpg",
    },
    {
      "customerName": "anwar",
      "customerView":
          "Hi! I am Anwar,a web customizer.I have worked on many projects at national and international level.",
      "customerPassion": "Customizer",
      "customerImagePath": "assets/images/mylogo.png",
    },
  ];
  List getValues() {
    return testimonialList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
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
            "Testimonial",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "What people say about me?",
            style: TextStyle(
                color: Colors.black,
                wordSpacing: 2,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 300,
            child: CarouselSlider.builder(
              itemCount: getValues().length,
              options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.5,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal),
              itemBuilder: (context, index, realIndex) {
                return TestimonialSlider(
                  customerImagePath: getValues()[index]["customerImagePath"],
                  customerName: getValues()[index]["customerName"],
                  customerPassion: getValues()[index]["customerPassion"],
                  customerView: getValues()[index]["customerView"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
