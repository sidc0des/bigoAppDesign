import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class NearbyBar extends StatefulWidget {
  @override
  _NearbyBarState createState() => _NearbyBarState();
}

class _NearbyBarState extends State<NearbyBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            nearbybarpost(
              size,
              "assets/pics/pic1.png",
              "Shivanya",
              "Hellow friends",
              "30 KM",
              "100",
              "50",
              "1",
              true,
              "assets/pics/pic1.png",
            ),
            nearbybarpost(
                size,
                "assets/pics/pic2.jpg",
                "Siya",
                "Merry Christmas",
                "30 KM",
                "2000",
                "100",
                "1",
                false,
                "assets/pics/pic2.jpg"),
            nearbybarpost(size, "assets/pics/pic3.jpg", "Siya", "Hey honey",
                "30 KM", "10", "5", "1", false, "assets/pics/pic3.jpg"),
            nearbybarpost(size, "assets/pics/pic2.jpg", "Siya", "rvgrevgr",
                "30 KM", "2000", "100", "1", false, "assets/pics/pic2.jpg"),
            nearbybarpost(size, "assets/pics/pic1.png", "Siya", "rervrev",
                "30 KM", "10", "5", "1", false, "assets/pics/pic1.png"),
            nearbybarpost(size, "assets/pics/pic3.jpg", "Siya", "grereegfv",
                "30 KM", "2000", "100", "1", false, "assets/pics/pic3.jpg"),
          ],
        ),
      ),
    );
  }
}
