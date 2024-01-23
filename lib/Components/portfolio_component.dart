import 'package:cv/Reusability/animated_overlay_container.dart';
import 'package:cv/Reusability/haptic_text_button.dart';
import 'package:flutter/material.dart';


class PortfolioComponent extends StatefulWidget {
  const PortfolioComponent({super.key});

  @override
  State<PortfolioComponent> createState() => _PortfolioComponentState();
}

class _PortfolioComponentState extends State<PortfolioComponent> {
  String type = "All";
  List<Map<String, dynamic>> all = [
    {
      "mainText": "Akool Film1",
      "subText": "Film Production1",
      "type": "Person",
      "image": "anas.jpg",
    },
    {
      "mainText": "Akool Film3",
      "subText": "Film Production3",
      "type": "Animal",
      "image": "deer.jpg",
    },
    {
      "mainText": "Akool Film2",
      "subText": "Film Production2",
      "type": "Person",
      "image": "anas1.jpg",
    },
    {
      "mainText": "Akool Film3",
      "subText": "Film Production3",
      "type": "Animal",
      "image": "cat.jpg",
    },
  ];
  List<Map<String, dynamic>> animal = [];
  List<Map<String, dynamic>> person = [];
  List getCurrentWorkingList() {
    if (type == "Person") {
      return person;
    } else if (type == "Animal") {
      return animal;
    } else {
      return all;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (animal.isEmpty && person.isEmpty) {
      all.forEach((element) {
        if (element["type"] == "Animal") {
          animal.add(element);
        } else if (element["type"] == "Person") {
          person.add(element);
        }
      });
    }
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
            "Portfolio",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "My work that I did for\nclients",
            style: TextStyle(
                color: Colors.black,
                wordSpacing: 2,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HapticTextButton(
                text: 'All',
                size: 18,
                clr: type == "All" ? Colors.red : Colors.black,
                onpressed: () {
                  setState(() {
                    type = "All";
                  });
                },
              ),
              HapticTextButton(
                text: 'Animal',
                size: 18,
                clr: type == "Animal" ? Colors.red : Colors.black,
                onpressed: () {
                  setState(() {
                    type = "Animal";
                  });
                },
              ),
              HapticTextButton(
                text: 'Person',
                size: 18,
                clr: type == "Person" ? Colors.red : Colors.black,
                onpressed: () {
                  setState(() {
                    type = "Person";
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: getCurrentWorkingList().length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return getCurrentWorkingList()[index]["type"] == type ||
                      type == "All"
                  ? AnimatedOverlayContainer(
                      index: getCurrentWorkingList()[index]["image"],
                      mainText: getCurrentWorkingList()[index]["mainText"],
                      subText: getCurrentWorkingList()[index]["subText"],
                    )
                  : Container();
            },
          ),
        ],
      ),
    );
  }
}
