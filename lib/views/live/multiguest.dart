import 'dart:math';

import 'package:bingo/theme.dart';
import 'package:camera/camera.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import '../../main.dart';

enum MultiGuestLiveSeats { fourSeats, sixSeats, nineSeats }

class GoLive extends StatefulWidget {
  @override
  _GoLiveState createState() => _GoLiveState();
}

class _GoLiveState extends State<GoLive> {
  CameraController controller;
  CarouselController _carouselController;
  int _current = 0;
  var seats = MultiGuestLiveSeats.fourSeats;
  List<String> titles = [
    "The Meme Team",
    "Best Fries Forever",
    "The Friendship Ship",
    "The Chamber of Secrets",
    "Taylor Swift's Squad",
    "Sisterhood",
    "The Pretty Committee",
    "7 Rings",
    "MerMAID To Be ",
    "The Schuyler Sisters",
    "All the Single Ladies",
    "The Powerpuff Girls",
    "The Heathers",
    "The Three Musketeers",
    "Will Trade As for Food",
    "Team Spirit",
    "Future Presidents",
    "Secret Society",
    "Master Minds",
    "Grammar Enthusiasts",
    "The Demoninators",
    "The Mitochondria",
    "The Brain Cells",
    "The Creators Collective",
  ];
  int random = 10;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      cameras[1],
      ResolutionPreset.high,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }

      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: (!controller.value.isInitialized)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                CameraPreview(controller),
                Positioned(
                    top: 0,
                    child: Container(
                      height: size.height,
                      width: size.width,
                      child: PageView(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                'assets/close.png',
                                                color: Colors.white,
                                                height: 16,
                                                width: 16,
                                              ),
                                            ),
                                          )),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Container(
                                        width: size.width - 30,
                                        height: 130,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                      child: Container(
                                                        height: ScreenUtil()
                                                            .setWidth(120),
                                                        width: ScreenUtil()
                                                            .setWidth(120),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    ScreenUtil()
                                                                        .setWidth(
                                                                            8)),
                                                            color: Colors
                                                                .grey[400]),
                                                        child: Image.asset(
                                                          "assets/bigo.jpg",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: size.width -
                                                          ScreenUtil()
                                                              .setWidth(120) -
                                                          40,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                titles[random],
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        18),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  setState(() {
                                                                    int randomnew =
                                                                        Random()
                                                                            .nextInt(titles.length);
                                                                    random =
                                                                        randomnew;
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/dice.png',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: ScreenUtil()
                                                                .setWidth(170),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                  color: Colors
                                                                      .black12),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        4.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      "select tag",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 4,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .arrow_forward_ios,
                                                                      size: 13,
                                                                      color: Colors
                                                                          .grey,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0),
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Text(
                                                        "share to",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          Colors.black12,
                                                      child: Icon(
                                                        Icons.share,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          Colors.black12,
                                                      child: Icon(
                                                        Icons.copy,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          Colors.black12,
                                                      child: Icon(
                                                        Icons.lock,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          Colors.black12,
                                                      child: Image.asset(
                                                        "assets/bean.png",
                                                        color: Colors.yellow,
                                                        height: 12,
                                                        width: 12,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height / 2 - 35,
                                  ),
                                  SizedBox(
                                    width: size.width / 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              seats =
                                                  MultiGuestLiveSeats.fourSeats;
                                            });
                                          },
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/4seat.png',
                                                height: 30,
                                                width: 30,
                                                color: (seats ==
                                                        MultiGuestLiveSeats
                                                            .fourSeats)
                                                    ? Colors.white
                                                    : Colors.grey,
                                              ),
                                              Text(
                                                "4 seats",
                                                style: TextStyle(
                                                    color: (seats ==
                                                            MultiGuestLiveSeats
                                                                .fourSeats)
                                                        ? Colors.white
                                                        : Colors.grey,
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              seats =
                                                  MultiGuestLiveSeats.sixSeats;
                                            });
                                          },
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/6seat.png',
                                                height: 30,
                                                width: 30,
                                                color: (seats ==
                                                        MultiGuestLiveSeats
                                                            .sixSeats)
                                                    ? Colors.white
                                                    : Colors.grey,
                                              ),
                                              Text(
                                                "6 seats",
                                                style: TextStyle(
                                                    color: (seats ==
                                                            MultiGuestLiveSeats
                                                                .sixSeats)
                                                        ? Colors.white
                                                        : Colors.grey,
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              seats =
                                                  MultiGuestLiveSeats.nineSeats;
                                            });
                                          },
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/9seat.png',
                                                height: 30,
                                                width: 30,
                                                color: (seats ==
                                                        MultiGuestLiveSeats
                                                            .nineSeats)
                                                    ? Colors.white
                                                    : Colors.grey,
                                              ),
                                              Text(
                                                "9 seats",
                                                style: TextStyle(
                                                    color: (seats ==
                                                            MultiGuestLiveSeats
                                                                .nineSeats)
                                                        ? Colors.white
                                                        : Colors.grey,
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Go LIVE",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    color: coolBlue,
                                    minWidth: ScreenUtil().setWidth(400),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Multi-Guest LIVE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                              height: size.height,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                'assets/close.png',
                                                color: Colors.white,
                                                height: 16,
                                                width: 16,
                                              ),
                                            ),
                                          )),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Container(
                                        width: size.width - 30,
                                        height: 130,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                      child: Container(
                                                        height: ScreenUtil()
                                                            .setWidth(120),
                                                        width: ScreenUtil()
                                                            .setWidth(120),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    ScreenUtil()
                                                                        .setWidth(
                                                                            8)),
                                                            color: Colors
                                                                .grey[400]),
                                                        child: Image.asset(
                                                          "assets/bigo.jpg",
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: size.width -
                                                          ScreenUtil()
                                                              .setWidth(120) -
                                                          40,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                titles[random],
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        18),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  setState(() {
                                                                    int randomnew =
                                                                        Random()
                                                                            .nextInt(titles.length);
                                                                    random =
                                                                        randomnew;
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 25,
                                                                  width: 25,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/dice.png',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: ScreenUtil()
                                                                .setWidth(170),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                  color: Colors
                                                                      .black12),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        4.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      "select tag",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 4,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .arrow_forward_ios,
                                                                      size: 13,
                                                                      color: Colors
                                                                          .grey,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0),
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Text(
                                                        "share to",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          Colors.black12,
                                                      child: Icon(
                                                        Icons.share,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          Colors.black12,
                                                      child: Icon(
                                                        Icons.copy,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          Colors.black12,
                                                      child: Icon(
                                                        Icons.lock,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          Colors.black12,
                                                      child: Image.asset(
                                                        "assets/bean.png",
                                                        color: Colors.yellow,
                                                        height: 12,
                                                        width: 12,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height / 2 + 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Go LIVE",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                        color: coolBlue,
                                        minWidth: ScreenUtil().setWidth(400),
                                      ),
                                      Icon(
                                        Icons.emoji_emotions,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "LIVE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              )),
                          SafeArea(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: size.height + 20,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Color(0xff171487),
                                    Color(0xfffca5da)
                                  ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/close.png',
                                            color: Colors.white,
                                            height: 16,
                                            width: 16,
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: size.width - 30,
                                    height: 130,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: Container(
                                                    height: ScreenUtil()
                                                        .setWidth(120),
                                                    width: ScreenUtil()
                                                        .setWidth(120),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                ScreenUtil()
                                                                    .setWidth(
                                                                        8)),
                                                        color:
                                                            Colors.grey[400]),
                                                    child: Image.asset(
                                                      "assets/bigo.jpg",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  width: size.width -
                                                      ScreenUtil()
                                                          .setWidth(120) -
                                                      40,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            titles[random],
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                int randomnew =
                                                                    Random().nextInt(
                                                                        titles
                                                                            .length);
                                                                random =
                                                                    randomnew;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 25,
                                                              width: 25,
                                                              child:
                                                                  Image.asset(
                                                                'assets/dice.png',
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(170),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                              color: Colors
                                                                  .black12),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  "select tag",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12),
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .arrow_forward_ios,
                                                                  size: 13,
                                                                  color: Colors
                                                                      .grey,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 8.0),
                                                  child: Text(
                                                    "share to",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CircleAvatar(
                                                  radius: 13,
                                                  backgroundColor:
                                                      Colors.black12,
                                                  child: Icon(
                                                    Icons.share,
                                                    color: Colors.white,
                                                    size: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CircleAvatar(
                                                  radius: 13,
                                                  backgroundColor:
                                                      Colors.black12,
                                                  child: Icon(
                                                    Icons.copy,
                                                    color: Colors.white,
                                                    size: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CircleAvatar(
                                                  radius: 13,
                                                  backgroundColor:
                                                      Colors.black12,
                                                  child: Icon(
                                                    Icons.lock,
                                                    color: Colors.white,
                                                    size: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CircleAvatar(
                                                  radius: 13,
                                                  backgroundColor:
                                                      Colors.black12,
                                                  child: Image.asset(
                                                    "assets/bean.png",
                                                    color: Colors.yellow,
                                                    height: 12,
                                                    width: 12,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height / 2 - 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_box_rounded,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "meet New Friends via Let's Party",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Go Live",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    color: Color(0xff01c5c4),
                                    minWidth: ScreenUtil().setWidth(400),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Audio Live",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
    );
  }
}
