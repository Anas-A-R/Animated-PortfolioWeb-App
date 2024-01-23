import 'package:flutter/material.dart';

class GradientButtonContainer extends StatelessWidget {
  final String title;
  final double width;
  final double titleSize;
  final double height;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientVertical;
  final Function() onpressed;

  const GradientButtonContainer(
      {super.key,
      required this.title,
      required this.width,
      required this.height,
      required this.clr,
      required this.overlayColor,
      required this.isGradientVertical,
      required this.onpressed,
      required this.titleSize});

  @override
  Widget build(BuildContext context) {
    return Container(
       
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 10,
          child: Container(
           decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: clr,
                    begin: isGradientVertical? Alignment.topCenter: Alignment.centerLeft,
                    end: isGradientVertical? Alignment.bottomCenter : Alignment.centerRight,
                    ),
                    
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              
                style: ButtonStyle(
                  
                  elevation: MaterialStatePropertyAll(0),
                  overlayColor: MaterialStatePropertyAll(overlayColor),
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent),
                ),
                onPressed: onpressed,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: titleSize),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
