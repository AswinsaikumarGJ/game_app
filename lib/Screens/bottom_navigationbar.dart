import 'package:flutter/material.dart';
import 'package:game_app/Screens/homepage.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var currentScreen;

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      currentScreen = Homepage();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: currentScreen == '' ? Colors.black : Colors.black,
        body: currentScreen,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: Colors.orange[600],
          mini: true,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: h * 0.11,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          currentScreen = Homepage();
                        });
                      },
                      child: Container(
                        height: h * 0.11,
                        width: w * 0.28,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.orange, Colors.yellow])),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.dialer_sip_rounded,
                              size: 40,
                              color: Colors.white,
                            ),
                            Text(
                              "Support".tr,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: h * 0.11,
                      width: w * 0.43,
                      color: Colors.black,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                                height: h * 0.11,
                                width: w * 0.21,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.sports,
                                      size: 40,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "Sports".tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 13),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: h * 0.11,
                                width: w * 0.21,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.casino,
                                      size: 40,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "Live Casino".tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 13),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: h * 0.11,
                                width: w * 0.21,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.sports_esports,
                                      size: 40,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "E-Sports".tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 13),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: h * 0.11,
                                width: w * 0.21,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.numbers,
                                      size: 40,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "Slots".tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 13),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          currentScreen = Homepage();
                        });
                      },
                      child: Container(
                        height: h * 0.11,
                        width: w * 0.28,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.orange, Colors.yellow])),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.white,
                            ),
                            Text(
                              "Register".tr,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
