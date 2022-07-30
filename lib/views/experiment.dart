import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    List rowList = [
      ["Trending", true],
      ["All", false],
      ["Physics", false],
      ["Chemistry", false]
    ];
    List width = <double>[80, 36, 54, 64];
    List VerticalList = [
      ['Elephant Toothpaste', 'assets/images/Elephant Toothpaste.png'],
      ['Chemical Chameleon', 'assets/images/chemical  chameleon.png'],
      ['Lemon Battery', 'assets/images/lemon battery.png'],
      ['Elephant Toothpaste', 'assets/images/Elephant Toothpaste.png'],
    ];
    double height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
        
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text("Lab N box"), 
          backgroundColor: HexColor("#410056"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
        ),
        body: Container(
          height: height,
          width: Width,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/images/BG.png")),
          ),
          child: Stack(children: [
            Column(
              children: [
               
                Container(
                    width: Width,
                    height: 80,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(
                              0.0,
                              3.0,
                            ),
                            blurRadius: 6.0,
                          ),
                        ], //Box
                        color: HexColor("#FFFFFF").withOpacity(1),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: HexColor("#410056"),
                            ),
                            Text(
                              "Experiments List",
                              style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.headline2,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  color: HexColor("#000000")),
                            ),
                            Container()
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 28,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: HexColor("#1B002452"),
                                      offset: const Offset(
                                        0.0,
                                        1.0,
                                      ),
                                      blurRadius: 6.0,
                                    ),
                                  ], //Box
                                  color: HexColor("#FFFFFF").withOpacity(1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.filter_list,
                                    color: HexColor("#9A9A9A").withOpacity(1),
                                  ),
                                  Text(
                                    "Filter",
                                    style: GoogleFonts.poppins(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w200,
                                        fontStyle: FontStyle.normal,
                                        color: HexColor("#000000")),
                                  )
                                ],
                              )),
                            ),
                            Container(
                                width: 20,
                                height: 22,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  thickness: 2,
                                )),
                            Container(
                              height: 25,
                              width: Width / 1.5,
                              child: Stack(children: [
                                ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    width: 10,
                                  ),
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: rowList.length,
                                  itemBuilder: (context, items) {
                                    return Container(
                                      height: 22,
                                      width: width[items],
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        border: Border.all(
                                            width: 0.5,
                                            color: HexColor("#410056")),
                                        color: rowList[items][1]
                                            ? HexColor("#701E8B")
                                            : HexColor("#FFFFFF")
                                                .withOpacity(1),
                                      ),
                                      child: Center(
                                        child: Text(
                                          rowList[items][0],
                                          style: GoogleFonts.poppins(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline2,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.normal,
                                              color: rowList[items][1]
                                                  ? HexColor("#F9F9F9")
                                                  : HexColor("#410056")),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Positioned(
                                    top: 0,
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                        height: 20,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          color: HexColor('#FFFFFF'),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              bottomLeft: Radius.circular(5)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: HexColor("#1B002463"),
                                              blurRadius: 18.0,
                                              spreadRadius: 2.0,
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                            child: Transform(
                                          alignment: Alignment.center,
                                          transform: Matrix4.rotationY(math.pi),
                                          child: Icon(
                                            Icons.arrow_back_ios_new,
                                            size: 15,
                                          ),
                                        ))))
                              ]),
                            ),
                          ],
                        ),
                      ],
                    )),

                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                    itemCount: VerticalList.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        height: 220,
                        width: Width / 1.5,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                                right: 0,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  height: 220,
                                  width: 260,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          blurRadius: 8.0,
                                        ),
                                      ],

                                      //Box
                                      color: HexColor("#FFFFFF").withOpacity(1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                )),
                            Container(
                                width: Width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 220,
                                      width: Width / 2.2,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Image.asset(VerticalList[index][1],
                                          fit: BoxFit.fill),
                                    ),
                                    Container(
                                      height: 225,
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            VerticalList[index][0],
                                            style: GoogleFonts.poppins(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline1,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: HexColor("#000000")
                                                  .withOpacity(1),
                                            ),
                                          ),
                                          Text(
                                            "Fill your house with gaint toothpaste!",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                                color: HexColor("#000000")),
                                          ),
                                          Container(
                                            height: 19,
                                            width: 63,
                                            decoration: BoxDecoration(
                                                color: HexColor("#D2D2D2")
                                                    .withOpacity(1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Center(
                                              child: Text(
                                                "Chemistry",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal,
                                                    color: HexColor("#1B0024")),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: height / 55,
                                            width: 125,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Difficulty:",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      color:
                                                          HexColor("#000000")),
                                                ),
                                                Container(
                                                  width: 8.0,
                                                  height: 8.0,
                                                  decoration: new BoxDecoration(
                                                    color: HexColor("#5C0079"),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Container(
                                                  width: 8.0,
                                                  height: 8.0,
                                                  decoration: new BoxDecoration(
                                                    color: HexColor("#5C0079"),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Container(
                                                  width: 8.0,
                                                  height: 8.0,
                                                  decoration: new BoxDecoration(
                                                    color: HexColor("#5C0079"),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Container(
                                                  width: 8.0,
                                                  height: 8.0,
                                                  decoration: new BoxDecoration(
                                                    color: HexColor("#CEBFBF"),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Container(
                                                  width: 8.0,
                                                  height: 8.0,
                                                  decoration: new BoxDecoration(
                                                    color: HexColor("#CEBFBF"),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 40),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromARGB(
                                                          255, 225, 204, 231),
                                                      offset: const Offset(
                                                        0.0,
                                                        3.0,
                                                      ),
                                                      blurRadius: 12.0,
                                                    ),
                                                  ], //Box
                                                  color: HexColor("#410056"),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(29))),
                                              width: 80,
                                              height: 30,
                                              child: Center(
                                                child: Text("Make It",
                                                    style: TextStyle(
                                                        fontFamily: "Segoe",
                                                        color:
                                                            HexColor("#FFFFFF"),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      );
                    }),
                  ),
                ))
              ],
            ),
          ]),
        ),
        bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: HexColor("#410056")),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              child: BottomNavigationBar(
                currentIndex: 1,
                selectedItemColor: HexColor("#F9F9F9"),
                backgroundColor: HexColor("#410056"),
                unselectedItemColor: Color.fromARGB(255, 122, 74, 138),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: 'Dashboard'),
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/images/Layer2.png"),
                      label: 'Experiments'),
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/images/Layer1.png"),
                      label: 'Learn it')
                ],
              ),
            )));
  }
}
