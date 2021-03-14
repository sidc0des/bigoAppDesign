import 'package:bingo/views/friends/bar_subscreens/bar_pictures.dart';
import 'package:bingo/views/friends/bar_subscreens/bar_popular.dart';
import 'package:bingo/views/friends/bar_subscreens/bar_topic.dart';
import 'package:bingo/views/home/nearby_bar.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class Bar extends StatefulWidget {
  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  PageController _pageController;
  TextStyle selectedTextStyle = TextStyle(
    color: coolBlue,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  TextStyle unSelectedTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
  int _index = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    Future.delayed(Duration(milliseconds: 100), () {
      _pageController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: size.width - 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 0;
                              _pageController.animateToPage(0, duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: (_index == 0) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Center(
                                child: Text(
                                  "🔥 Popular",
                                  style: TextStyle(
                                      color: (_index == 0) ? Colors.white : Colors.grey[600],
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                _index = 1;
                                _pageController.animateToPage(1, duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: (_index == 1) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Center(
                                  child: Text(
                                    "🎥 video",
                                    style: TextStyle(
                                        color: (_index == 1) ? Colors.white : Colors.grey[600],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                _index = 2;
                                _pageController.animateToPage(2, duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: (_index == 2) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Center(
                                  child: Text(
                                    "📸 Picture",
                                    style: TextStyle(
                                        color: (_index == 2) ? Colors.white : Colors.grey[600],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                _index = 3;
                                _pageController.animateToPage(3, duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: (_index == 3) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Center(
                                  child: Text(
                                    "📖 Topic",
                                    style: TextStyle(
                                        color: (_index == 3) ? Colors.white : Colors.grey[600],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(Icons.menu_open),
                  )
                ],
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
                  bar_popular(),
                  NearbyBar(),
                  bar_pictures(),
                  bar_topic(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
