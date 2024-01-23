import 'package:flutter/material.dart';

class TextBlockOne extends StatelessWidget {
  final String mainText;
  final String description;
  final String subMainText;
  final String longText;

  TextBlockOne(
      {required this.mainText,
      required this.description,
      required this.subMainText,
      required this.longText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                mainText,
                  style: TextStyle(
                      color: Colors.black,
                      wordSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              // height: 40,width: 90,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
               subMainText,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          longText,
          style: TextStyle(
              color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
