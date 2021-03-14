import 'package:bingo/views/dashboard.dart';
import 'package:bingo/views/explore.dart';
import 'package:bingo/views/friends.dart';
import 'package:bingo/views/live/multiguest.dart';
import 'package:bingo/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bingo/theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _bnIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (val) {
          setState(() {
            _bnIndex = val;
          });
        },
        children: [DashBoard(), Explore(), Friends(), Profile()],
      ),
      //GoLive(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Container(
          width: size.width,
          height: 45,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: 45,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(0, duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/icons/home.png'),
                          )),
                      GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(1, duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/icons/explore.png'),
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(2, duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/icons/friends.png'),
                          )),
                      GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(3, duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/icons/profile.png'),
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: size.width / 2 - 25,
                  bottom: 5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GoLive()));
                    },
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 22.5,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: brightBlue,
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
