import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TestimonialSlider extends StatelessWidget {
  final String customerName;
  final String customerPassion;
  final String customerImagePath;
  final String customerView;

  TestimonialSlider(
      {required this.customerName,
      required this.customerPassion,
      required this.customerImagePath,
      required this.customerView});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              spreadRadius: 8,
              color: Colors.black.withOpacity(0.03),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              customerView,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(customerImagePath),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          customerName,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          customerPassion,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Icon(
                  FontAwesomeIcons.quoteLeft,
                  color: Color.fromARGB(255, 228, 205, 2),
                  size: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
