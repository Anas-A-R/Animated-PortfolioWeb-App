import 'package:cv/Cursor/animated_circle_cursor.dart';
import 'package:cv/Reusability/gradient_button_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ContactComponent extends StatelessWidget {
  const ContactComponent({super.key});

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
            "Contact Me",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Fill the form below \nto get in touch",
            style: TextStyle(
                color: Colors.black,
                wordSpacing: 2,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 280,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          // color: Colors.cyan,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 270,
                                      // color: Colors.white,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Your Name",
                                            labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                            fillColor: Colors.white,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.purple),
                                            )),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 2,
                                        maxLines: null,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 270,
                                      // color: Colors.purple,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Your Email",
                                            labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                            fillColor: Colors.white,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.purple),
                                            )),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 2,
                                        maxLines: null,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 270,
                                      // color: Colors.red,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Your Phone",
                                            labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                            fillColor: Colors.white,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.purple),
                                            )),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 2,
                                        maxLines: null,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 270,
                                      // color: Colors.yellow,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Subject",
                                            labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                            fillColor: Colors.white,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.purple),
                                            )),
                                        keyboardType: TextInputType.multiline,
                                        minLines: 2,
                                        maxLines: null,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Your message here",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                            flex: 5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10,right: 22),
                              child: Container(
                                height: 40,
                                // color: Colors.lime,
                                child: TextField(
                                  decoration: InputDecoration(
                                      // labelText: "Your Name",
                                      // labelStyle: TextStyle(
                                      //   color: Colors.grey,
                                      //   fontSize: 12,
                                      // ),
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide:
                                            BorderSide(color: Colors.purple),
                                      )),
                                  keyboardType: TextInputType.multiline,
                                  minLines: 10,
                                  maxLines: null,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 280,
                    // color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 228, 205, 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Icon(
                                    FontAwesomeIcons.phone,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Call",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "+92 335 0658278",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 228, 205, 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "anasrazaq850@gmail.com",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 228, 205, 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Icon(
                                    FontAwesomeIcons.addressCard,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Address",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Shahdra Lahore Pakistan",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: AnimatedCircleCursorMouseRegion(
              child: Container(
                height: 70,
                width: 200,
                child: GradientButtonContainer(
                    title: "Submit",
                    width: 50,
                    height: 20,
                    clr: [Colors.red, Colors.red],
                    overlayColor: Colors.blue,
                    isGradientVertical: false,
                    onpressed: () {},
                    titleSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
