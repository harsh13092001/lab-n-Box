import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quizzy/views/experiment.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                                color: HexColor("#F9F9F9").withOpacity(1),
                              ),
                              child: Center(
                                child: Text("Sign In",
                                    style: TextStyle(
                                        fontFamily: "Segoe",
                                        color:
                                            Color.fromARGB(235, 186, 174, 190)
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
                            height: height / 4.2,
                            width: width / 1.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Enter the OTP Received",
                                        style: TextStyle(
                                            fontFamily: "Segoe",
                                            color: HexColor("#410056"),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                  ],
                                ),
                                Container(
                                  width: width / 1.8,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                            border: Border.all(
                                                width: 1.0,
                                                color: HexColor("#4D3057"))),
                                        height: 50,
                                        width: 38,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                            border: Border.all(
                                                width: 1.0,
                                                color: HexColor("#4D3057"))),
                                        height: 50,
                                        width: 38,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                            border: Border.all(
                                                width: 1.0,
                                                color: HexColor("#4D3057"))),
                                        height: 50,
                                        width: 38,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                            border: Border.all(
                                                width: 1.0,
                                                color: HexColor("#4D3057"))),
                                        height: 50,
                                        width: 38,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                            border: Border.all(
                                                width: 1.0,
                                                color: HexColor("#4D3057"))),
                                        height: 50,
                                        width: 38,
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Didn't Received?",
                                        style: TextStyle(
                                            fontFamily: "Segoe",
                                            color: HexColor("#686868")
                                                .withOpacity(1),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12)),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text("Resend OTP",
                                          style: TextStyle(
                                            fontFamily: "Segoe",
                                            color: HexColor("#21CDD9")
                                                .withOpacity(1),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()));
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
                              child: Text("Submit",
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

    // )
  }
}
