import 'package:bingo/views/home/multiguest/multi_guest_all.dart';
import 'package:bingo/views/home/multiguest/multi_guest_chat.dart';
import 'package:bingo/views/home/multiguest/multi_guest_follow.dart';
import 'package:bingo/views/home/multiguest/multi_guest_fun.dart';
import 'package:bingo/views/home/multiguest/multi_guest_gangup.dart';
import 'package:bingo/views/home/multiguest/multi_guest_sentiment.dart';
import 'package:bingo/views/home/multiguest/multi_guest_sing.dart';
import 'package:bingo/views/home/nearby_people.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class MultiGuest extends StatefulWidget {
  @override
  _MultiGuestState createState() => _MultiGuestState();
}

class _MultiGuestState extends State<MultiGuest> {
  int _index = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 7,
          ),
          Container(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
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
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Center(
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: (_index == 0) ? Colors.white : Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 12,
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
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Center(
                              child: Text(
                                "All",
                                style: TextStyle(
                                    color: (_index == 1) ? Colors.white : Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 12,
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
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Center(
                              child: Text(
                                "Chat",
                                style: TextStyle(
                                    color: (_index == 2) ? Colors.white : Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 12,
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
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Center(
                              child: Text(
                                "Sentiment",
                                style: TextStyle(
                                    color: (_index == 3) ? Colors.white : Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 4;
                            _pageController.animateToPage(4, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: (_index == 4) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Center(
                              child: Text(
                                "Fun",
                                style: TextStyle(
                                    color: (_index == 4) ? Colors.white : Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 5;
                            _pageController.animateToPage(5, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: (_index == 5) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Center(
                              child: Text(
                                "Sing",
                                style: TextStyle(
                                    color: (_index == 5) ? Colors.white : Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 6;
                            _pageController.animateToPage(6, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: (_index == 6) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                            child: Center(
                              child: Text(
                                "Gang up",
                                style: TextStyle(
                                    color: (_index == 6) ? Colors.white : Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 7,
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
                multi_guest_follow(),
                multi_guest_all(),
                multi_guest_chat(),
                multi_guest_sentiment(),
                multi_guest_fun(),
                multi_guest_sing(),
                multi_guest_gangup()
              ],
            ),
          )
        ],
      ),
    );
  }
}
