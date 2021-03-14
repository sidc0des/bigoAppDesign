import 'package:bingo/theme.dart';
import 'package:bingo/views/friends/bar.dart';
import 'package:bingo/views/friends/follow.dart';
import 'package:bingo/views/friends/meetup.dart';
import 'package:bingo/views/post/post.dart';
import 'package:bingo/widgets/notification.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> with SingleTickerProviderStateMixin {
  PageController _pageController;
  TextStyle selectedTextStyle = TextStyle(
    color: coolerBlue,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  TextStyle unSelectedTextStyle = TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700);

  int _index = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    Future.delayed(Duration(milliseconds: 100), () {
      _pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 0.0, top: 5.0),
                  child: Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 250,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _index = 0;
                                      _pageController.animateToPage(0,
                                          duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                                    });
                                  },
                                  child: SizedBox(
                                    height: 60,
                                    child: Center(
                                      child: Text(
                                        "Follow",
                                        style: (_index == 0) ? selectedTextStyle : unSelectedTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _index = 1;
                                      _pageController.animateToPage(1,
                                          duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                                    });
                                  },
                                  child: SizedBox(
                                    height: 60,
                                    child: Center(
                                      child: Text(
                                        "Bar",
                                        style: (_index == 1) ? selectedTextStyle : unSelectedTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _index = 3;
                                      _pageController.animateToPage(2,
                                          duration: Duration(milliseconds: 50), curve: Curves.easeIn);
                                    });
                                  },
                                  child: SizedBox(
                                    height: 60,
                                    child: Center(
                                      child: Text(
                                        "Meetup",
                                        style: (_index == 2) ? selectedTextStyle : unSelectedTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.mail_outline_outlined,
                                size: 25,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => notification()),
                                );
                              },
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            InkWell(
                              child: CircleAvatar(
                                backgroundColor: coolBlue,
                                radius: 13,
                                child: Icon(
                                  Icons.edit,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Post()));
                              },
                            )
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
                      Follow(),
                      Bar(),
                      Meetup(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
