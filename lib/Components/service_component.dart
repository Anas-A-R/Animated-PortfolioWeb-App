
import 'package:cv/Reusability/service_card.dart';
import 'package:flutter/material.dart';

class ServiceComponent extends StatelessWidget {
  List<Map<String, dynamic>> serviceInfo = [
    {
      "pName": "Project 1",
      "pDescription":
          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
    },
    {
      "pName": "Project 2",
      "pDescription":
          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
    },
    {
      "pName": "Project 3",
      "pDescription":
          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
    },
    {
      "pName": "Project 4",
      "pDescription":
          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
    },
    {
      "pName": "Project 5",
      "pDescription":
          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
    },
    {
      "pName": "Project 6",
      "pDescription":
          "Hi! I am Anas Abdul Razzaq,a Flutter Apps(Mobile,Web,Desktop Apps) developer.I have worked on many projects at national and international level.",
    },
  ];
  List getList() {
    return serviceInfo;
  }

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
            "Services",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "What you can Expect\nfrom me?",
            style: TextStyle(
                color: Colors.black,
                wordSpacing: 2,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: getList().length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ServiceCard(
                pName: getList()[index]["pName"],
                pDescription: getList()[index]["pDescription"],
              );
            },
          )
        ],
      ),
    );
  }
}
