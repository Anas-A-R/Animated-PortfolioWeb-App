import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class InfoIndicatorTwo extends StatelessWidget {
  final String text;
  final double sliderSize;
  final double textSize;
  final double value;

  InfoIndicatorTwo(
      {required this.text,
      required this.sliderSize,
      required this.textSize,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        SleekCircularSlider(
          min: 0,
          max: 100,
          appearance: CircularSliderAppearance(
            customColors: CustomSliderColors(progressBarColor: Colors.red),
            infoProperties: InfoProperties(
              mainLabelStyle: TextStyle(fontWeight: FontWeight.w500),
            ),
            size: sliderSize,
            customWidths: CustomSliderWidths(progressBarWidth: 10),
          ),
          initialValue: value,
        ),
     
        Text(
          text,
          style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
