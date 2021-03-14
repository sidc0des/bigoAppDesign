import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
  @override
  _FollowState createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  // color: Colors.red,
                  child: Row(
                    children: [
                      status_card("fewa", "assets/pics/pic1.png"),
                      SizedBox(
                        width: 20,
                      ),
                      status_card("fewa", "assets/pics/pic1.png"),
                    ],
                  ),
                ),
              ),
              imagesPost(
                size: size,
                avtarUrl: "assets/pics/pic1.png",
                postUrl: "assets/pics/pic1.png",
                name: "Harshita",
                distance: "20",
                like: "200",
                comment: "20",
                share: "10",
                live: true,
              ),
              nearbybarpost(
                  size,
                  "assets/pics/pic1.png",
                  "Siya",
                  "Merry Christmas",
                  "30 KM",
                  "2000",
                  "100",
                  "1",
                  false,
                  "assets/pics/pic1.png"),
              imagesPost(
                size: size,
                avtarUrl: "assets/pics/pic1.png",
                postUrl: "assets/pics/pic1.png",
                name: "Sanjana",
                distance: "40",
                like: "2000",
                comment: "200",
                share: "10",
                live: true,
              ),
              imagesPost(
                size: size,
                avtarUrl: "assets/pics/pic1.png",
                postUrl: "assets/pics/pic1.png",
                name: "avantka",
                distance: "100",
                like: "2000",
                comment: "200",
                share: "10",
                live: true,
              ),
              nearbybarpost(size, "assets/pics/pic1.png", "Siya", "Hey honey",
                  "30 KM", "10", "5", "1", false, "assets/pics/pic1.png"),
              imagesPost(
                size: size,
                avtarUrl: "assets/pics/pic1.png",
                postUrl: "assets/pics/pic1.png",
                name: "Himani",
                distance: "20",
                like: "200",
                comment: "20",
                share: "10",
                live: true,
              ),
              imagesPost(
                size: size,
                avtarUrl: "assets/pics/pic1.png",
                postUrl: "assets/pics/pic1.png",
                name: "Sanjana",
                distance: "40",
                like: "2000",
                comment: "200",
                share: "10",
                live: true,
              ),
              imagesPost(
                size: size,
                avtarUrl: "assets/pics/pic1.png",
                postUrl: "assets/pics/pic1.png",
                name: "avantka",
                distance: "100",
                like: "2000",
                comment: "200",
                share: "10",
                live: true,
              ),
              imagesPost(
                size: size,
                avtarUrl: "assets/pics/pic1.png",
                postUrl: "assets/pics/pic1.png",
                name: "Sanjana",
                distance: "40",
                like: "2000",
                comment: "200",
                share: "10",
                live: true,
              ),
              imagesPost(
                size: size,
                avtarUrl: "assets/pics/pic1.png",
                postUrl: "assets/pics/pic1.png",
                name: "Sanjana",
                distance: "40",
                like: "2000",
                comment: "200",
                share: "10",
                live: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
