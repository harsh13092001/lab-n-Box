import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quizzy/views/otp.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: HexColor("#410056"),
        body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/images/BG.png")),
            ),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lab N box",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        height: height / 1.4,
                        width: width / 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: HexColor("#FFFFFF"),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height / 2.4,
                              width: width / 1.2,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width / 2.4,
                                        height: 51,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20)),
                                          color: HexColor("#F9F9F9")
                                              .withOpacity(1),
                                        ),
                                        child: Center(
                                          child: Text("Sign In",
                                              style: TextStyle(
                                                  fontFamily: "Segoe",
                                                  color: Color.fromARGB(
                                                          235, 186, 174, 190)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18)),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20)),
                                          color: HexColor("#D8D8D8"),
                                        ),
                                        width: width / 2.4,
                                        height: 51,
                                        child: Center(
                                          child: Text("Sign Up",
                                              style: TextStyle(
                                                  fontFamily: "Segoe",
                                                  color: HexColor("#410056"),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      height: height / 3,
                                      width: width / 1.2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          255, 225, 204, 231),
                                                      offset: const Offset(
                                                        0.0,
                                                        2.0,
                                                      ),
                                                      blurRadius: 14.0,
                                                    ),
                                                  ], //Box
                                                  color: HexColor("#FFFFFF")
                                                      .withOpacity(1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(6))),
                                              width: 274,
                                              height: 50,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Your Name",
                                                    style: TextStyle(
                                                        fontFamily: "Segoe",
                                                        color:
                                                            HexColor("#D9CCDD")
                                                                .withOpacity(1),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15)),
                                              )),
                                          Container(
                                            width: 274,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 225, 204, 231),
                                                    offset: const Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                    blurRadius: 14.0,
                                                  ),
                                                ], //Box
                                                color: HexColor("#FFFFFF")
                                                    .withOpacity(1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(6))),
                                            child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("Enter you email",
                                                    style: TextStyle(
                                                        fontFamily: "Segoe",
                                                        color:
                                                            HexColor("#D9CCDD")
                                                                .withOpacity(1),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15))),
                                          ),
                                          Container(
                                            width: 274,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 225, 204, 231),
                                                    offset: const Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                    blurRadius: 14.0,
                                                  ),
                                                ], //Box
                                                color: HexColor("#FFFFFF")
                                                    .withOpacity(1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(6))),
                                            child: Padding(
                                                padding: EdgeInsets.all(0.0),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                      "Your phone Number",
                                                      style: TextStyle(
                                                          fontFamily: "Segoe",
                                                          color: HexColor(
                                                                  "#D9CCDD")
                                                              .withOpacity(1),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 15)),
                                                )),
                                          ),
                                          Container(
                                            width: 274,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 225, 204, 231),
                                                    offset: const Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                    blurRadius: 14.0,
                                                  ),
                                                ], //Box
                                                color: HexColor("#FFFFFF")
                                                    .withOpacity(1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(6))),
                                            child: Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Text("password",
                                                    style: TextStyle(
                                                        fontFamily: "Segoe",
                                                        color:
                                                            HexColor("#D9CCDD")
                                                                .withOpacity(1),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 15))),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Container(
                                height: height / 3.5,
                                width: width / 1.2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: (() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Otp()));
                                      }),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 184, 151, 194),
                                                offset: const Offset(
                                                  0.0,
                                                  3.0,
                                                ),
                                                blurRadius: 12.0,
                                              ),
                                            ], //Box

                                            color: HexColor("#410056"),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(29))),
                                        width: 159,
                                        height: 51,
                                        child: Center(
                                          child: Text("Register",
                                              style: TextStyle(
                                                  fontFamily: "Segoe",
                                                  color: HexColor("#FFFFFF"),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18)),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "(or)",
                                      style: TextStyle(
                                          fontFamily: "Segoe",
                                          color: HexColor("#41005659"),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Container(
                                      height: 42,
                                      width: 252,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        border: Border.all(
                                            width: 0.5,
                                            color: HexColor("#410056")),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: 20,
                                              width: 20,
                                              child: Image.asset(
                                                'assets/images/google.png',
                                                fit: BoxFit.contain,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "Continue With Google",
                                              style: TextStyle(
                                                  fontFamily: "Segoe",
                                                  color: HexColor("#410056"),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 42,
                                      width: 252,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        border: Border.all(
                                            width: 0.5,
                                            color: HexColor("#410056")),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: 30,
                                              width: 30,
                                              child: Image.asset(
                                                'assets/images/facebook.png',
                                                fit: BoxFit.contain,
                                              )),
                                          Text(
                                            "Continue With Facebook",
                                            style: TextStyle(
                                                fontFamily: "Segoe",
                                                color: HexColor("#410056"),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Container()
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/last.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
