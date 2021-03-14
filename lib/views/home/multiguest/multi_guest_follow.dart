import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class multi_guest_follow extends StatefulWidget {
  @override
  _multi_guest_followState createState() => _multi_guest_followState();
}

class _multi_guest_followState extends State<multi_guest_follow> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            chatTile(size, "Come and play", "siya", "assets/pics/pic1.png",
                "2 min", "Live"),
            chatTile(size, "Come and play", "Urvashi", "assets/pics/pic1.png",
                "10 min", "Live"),
            chatTile(size, "Pagal", "Jakir", "assets/pics/pic1.png",
                "4 min min", "Live"),
            chatTile(size, "Billy Boys", "Billy", "assets/pics/pic1.png",
                "20 min", "Live"),
            chatTile(size, "Billy Boys", "Billy", "assets/pics/pic1.png",
                "20 min", "Live"),
            chatTile(size, "Billy Boys", "Billy", "assets/pics/pic1.png",
                "20 min", "Live"),
            chatTile(size, "Billy Boys", "Billy", "assets/pics/pic1.png",
                "20 min", "Live"),
            chatTile(size, "Billy Boys", "Billy", "assets/pics/pic1.png",
                "20 min", "Live")
          ],
        ),
      ),
    );
  }
}
