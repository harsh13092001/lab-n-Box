import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy/views/register.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(10),
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
                    height: height / 2,
                    width: width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: HexColor("#FFFFFF"),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: width / 2.4,
                              height: 51,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20)),
                                color: HexColor("#D8D8D8").withOpacity(1),
                              ),
                              child: Center(
                                child: Text("Sign In",
                                    style: TextStyle(
                                        fontFamily: "Segoe",
                                        color: HexColor("#410056"),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20)),
                                color: HexColor("#F9F9F9"),
                              ),
                              width: width / 2.4,
                              height: 51,
                              child: Center(
                                child: Text("Sign Up",
                                    style: TextStyle(
                                        fontFamily: "Segoe",
                                        color:
                                            Color.fromARGB(235, 186, 174, 190)
                                                .withOpacity(1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            height: height / 4.2,
                            width: width / 1.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                        color:
                                            HexColor("#FFFFFF").withOpacity(1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    width: 274,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          "Registered Email ID/ Phone Number",
                                          style: TextStyle(
                                              fontFamily: "Segoe",
                                              color: HexColor("#D9CCDD")
                                                  .withOpacity(1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14)),
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
                                      color: HexColor("#FFFFFF").withOpacity(1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Enter your password",
                                        style: TextStyle(
                                            fontFamily: "Segoe",
                                            color: HexColor("#D9CCDD")
                                                .withOpacity(1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                  ),
                                ),
                              ],
                            )),
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 184, 151, 194),
                                    offset: const Offset(
                                      0.0,
                                      3.0,
                                    ),
                                    blurRadius: 12.0,
                                  ),
                                ], //Box
                                color: HexColor("#410056"),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29))),
                            width: 159,
                            height: 51,
                            child: Center(
                              child: Text("Sign In",
                                  style: TextStyle(
                                      fontFamily: "Segoe",
                                      color: HexColor("#FFFFFF"),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18)),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                        )
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
        ]),
      ),
    );
  }
}
