import 'package:bingo/views/profile/individual/post.dart';
import 'package:bingo/widgets/notification.dart';
import 'package:flutter/material.dart';

import 'individual/liked.dart';

class posts extends StatefulWidget {
  @override
  _postsState createState() => _postsState();
}

class _postsState extends State<posts> {
  int _index = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _index = 0;
                  _pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                });
              },
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Posts",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Container(
                        height: 3.0,
                        width: 10.0,
                        color: (_index == 0) ? Colors.black : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _index = 1;
                  _pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                });
              },
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Liked",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Container(
                        height: 3.0,
                        width: 10.0,
                        color: (_index == 1) ? Colors.black : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              // Chip(
              //   label: Text("Liked"),
              //   backgroundColor: (_index == 1) ? coolBlue : Colors.grey[300],
              // ),
            ),
          ],
        ),

        // automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.mail_outline_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => notification()));
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (val) {
                  setState(() {
                    _index = val;
                  });
                },
                allowImplicitScrolling: true,
                controller: _pageController,
                children: [mypost_post(), liked()],
              ),
            ),
            // RawMaterialButton(onPressed: null)
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: MaterialButton(
                onPressed: () {},
                child: (_index == 0)
                    ? Text(
                        "Post",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
                      )
                    : Text(
                        "Go to Bar",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                color: Color(0xff01c5c4),
                minWidth: 150,
              ),
              // FlatButton(
              //   onPressed: null,
              //   minWidth: 200,
              //   height: 45,
              //   color: coolBlue,
              //   child: (_index==0)?Row(
              //     children: [
              //       Icon(Icons.ac_unit,color: coolBlue,),
              //       Text("Post"),
              //     ],
              //   ):Text("Go to Bar"),
              //   // color: coolBlue,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20.0),
              //     side: BorderSide(color: coolBlue),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
