import 'package:flutter/material.dart';

class TitleOne extends StatelessWidget {
  final String text;
  final Color? clr;
  final double? borderWidth;
  final double? size;

  TitleOne({required this.text, this.clr, this.borderWidth, this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Container(
          height: size ?? 25,
          width: size ?? 25,
         padding: EdgeInsets.all((size ?? 25) / 5),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.red,
              border: Border.all(
                  style: BorderStyle.solid,
                  color: clr ?? Colors.red,
                  width: borderWidth ?? 2)),
          child: Container(
            padding: EdgeInsets.all((size ?? 25) / 5),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: clr ?? Colors.red,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              wordSpacing: 2,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
