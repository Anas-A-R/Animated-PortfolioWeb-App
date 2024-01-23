import 'package:cv/Reusability/blog_card.dart';
import 'package:flutter/material.dart';


class BlogComponent extends StatelessWidget {
  List<Map<String, dynamic>> blogInfo = [
    {
      "imageName": "mylogo.png",
      "heading": "Blog 1",
      "text": "Hi! I am Anas Abdul Razzaq",
    },
    {
      "imageName": "mylogo.png",
      "heading": "Blog 2",
      "text": "Hi! I am Anas Abdul Razzaq",
    },
    {
      "imageName": "mylogo.png",
      "heading": "Blog 3",
      "text": "Hi! I am Anas Abdul Razzaq",
    },
  ];
  List getInfo() {
    return blogInfo;
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
            "Blog",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Latest posts and updates",
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
            itemCount: getInfo().length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return BlogCard(
                imageName: getInfo()[index]["imageName"],
                heading: getInfo()[index]["heading"],
                text: getInfo()[index]["text"],
              );
            },
          )
        ],
      ),
    );
  }
}
