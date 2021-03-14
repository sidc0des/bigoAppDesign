import 'dart:ui';
import 'package:bingo/views/home/multi_guest.dart';
import 'package:bingo/views/home/nearby.dart';
import 'package:bingo/views/home/notifications.dart';
import 'package:bingo/views/home/pk.dart';
import 'package:bingo/views/home/popular.dart';
import 'package:bingo/views/home/search.dart';
import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TargetPlatform _platform;
  int _index = 0;
  PageController _pageController = PageController(initialPage: 0);
  TextStyle selectedTextStyle = TextStyle(
    color: coolerBlue,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  TextStyle unSelectedTextStyle =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(
        child: SafeArea(
          child: Container(
            width: size.width - 150,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, top: 14),
                  child: Text(
                    "Reminder",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Icon(
                  Icons.notifications,
                  size: 120,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No, LIVE now"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                recommendedLive(
                    url: "assets/pics/pic1.png", name: "saloni", size: size),
                recommendedLive(
                    url: "assets/pics/pic1.png", name: "victoria", size: size),
                recommendedLive(
                    url: "assets/pics/pic1.png", name: "ishani", size: size),
                recommendedLive(
                    url: "assets/pics/pic1.png", name: "rashmi", size: size),
                recommendedLive(
                    url: "assets/pics/pic1.png", name: "priyanshi", size: size),
                recommendedLive(
                    url: "assets/pics/pic1.png", name: "komal", size: size),
                recommendedLive(
                    url: "assets/pics/pic1.png", name: "pinkey", size: size),
              ],
            ),
          ),
        ),
      ),
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 8.0, right: 8.0, bottom: 0.0, top: 5.0),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width - 100,
                      height: 60,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _index = 0;
                                  _pageController.animateToPage(0,
                                      duration: Duration(milliseconds: 50),
                                      curve: Curves.easeIn);
                                });
                              },
                              child: SizedBox(
                                height: 60,
                                child: Center(
                                  child: Text(
                                    "Nearby",
                                    style: (_index == 0)
                                        ? selectedTextStyle
                                        : unSelectedTextStyle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _index = 1;
                                  _pageController.animateToPage(1,
                                      duration: Duration(milliseconds: 50),
                                      curve: Curves.easeIn);
                                });
                              },
                              child: SizedBox(
                                height: 60,
                                child: Center(
                                  child: Text(
                                    "Popular",
                                    style: (_index == 1)
                                        ? selectedTextStyle
                                        : unSelectedTextStyle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _index = 2;
                                  _pageController.animateToPage(2,
                                      duration: Duration(milliseconds: 50),
                                      curve: Curves.easeIn);
                                });
                              },
                              child: SizedBox(
                                height: 60,
                                child: Center(
                                  child: Text(
                                    "Multi-Guest",
                                    style: (_index == 2)
                                        ? selectedTextStyle
                                        : unSelectedTextStyle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _index = 3;
                                  _pageController.animateToPage(3,
                                      duration: Duration(milliseconds: 50),
                                      curve: Curves.easeIn);
                                });
                              },
                              child: SizedBox(
                                height: 60,
                                child: Center(
                                  child: Text(
                                    "PK",
                                    style: (_index == 3)
                                        ? selectedTextStyle
                                        : unSelectedTextStyle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Search()));
                          },
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState.openEndDrawer();
                          },
                          child: Icon(
                            Icons.notifications_none_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (val) {
                  setState(() {
                    _index = val;
                  });
                },
                allowImplicitScrolling: true,
                controller: _pageController,
                children: [
                  NearBy(),
                  Popular(),
                  MultiGuest(),
                  PK(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
