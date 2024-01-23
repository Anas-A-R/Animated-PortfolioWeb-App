import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class TwoTextOfAboutMeWithDottedLine extends StatelessWidget {
  final String text;
  final String subtext;

  TwoTextOfAboutMeWithDottedLine({ required this.text, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 5,),
        Text(
          subtext,
          style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5,),
        DottedLine(
          direction: Axis.horizontal,
          dashColor: Colors.white,
          dashGapColor: Colors.transparent,
          lineLength: double.infinity,
          lineThickness: 2,
          dashLength: 4,
        )
      ],
    );
  }
}
