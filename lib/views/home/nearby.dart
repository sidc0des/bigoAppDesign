import 'package:bingo/views/home/nearby_bar.dart';
import 'package:bingo/views/home/nearby_live.dart';
import 'package:bingo/views/home/nearby_people.dart';
import 'package:bingo/views/home/nearby_recommended.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class NearBy extends StatefulWidget {
  @override
  _NearByState createState() => _NearByState();
}

class _NearByState extends State<NearBy> {
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
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 0;
                          _pageController.animateToPage(0, duration: Duration(milliseconds: 10), curve: Curves.easeIn);
                        });
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(color: (_index == 0) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Center(
                            child: Text(
                              "Recommended",
                              style: TextStyle(
                                  color: (_index == 0) ? Colors.white : Colors.grey[600],
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 1;
                          _pageController.animateToPage(1, duration: Duration(milliseconds: 10), curve: Curves.easeIn);
                        });
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(color: (_index == 1) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Center(
                            child: Text(
                              "Live",
                              style: TextStyle(
                                  color: (_index == 1) ? Colors.white : Colors.grey[600],
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 2;
                          _pageController.animateToPage(2, duration: Duration(milliseconds: 10), curve: Curves.easeIn);
                        });
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(color: (_index == 2) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Center(
                            child: Text(
                              "Bar",
                              style: TextStyle(
                                  color: (_index == 2) ? Colors.white : Colors.grey[600],
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 3;
                          _pageController.animateToPage(3, duration: Duration(milliseconds: 10), curve: Curves.easeIn);
                        });
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(color: (_index == 3) ? coolerBlue : bingogrey, borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Center(
                            child: Text(
                              "People",
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
              children: [Recommended(), NearbyLive(), NearbyBar(), NearByPeople()],
            ),
          )
        ],
      ),
    );
  }
}
