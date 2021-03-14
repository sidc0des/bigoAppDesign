import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class NearByPeople extends StatefulWidget {
  @override
  _NearByPeopleState createState() => _NearByPeopleState();
}

class _NearByPeopleState extends State<NearByPeople> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            chatTile(size, "Come and play", "siya", "assets/pics/pic1.png",
                "2 min", "chat"),
            chatTile(size, "Come and play", "Urvashi", "assets/pics/pic1.png",
                "10 min", "chat"),
            chatTile(size, "Pagal", "jasmine", "assets/pics/pic2.jpg",
                "4 min min", "chat"),
            chatTile(size, "Pagal", "ruhi", "assets/pics/pic2.jpg", "4 min min",
                "chat"),
            chatTile(size, "Pagal", "sanya", "assets/pics/pic3.jpg",
                "4 min min", "chat"),
            chatTile(size, "Pagal", "Himannshi", "assets/pics/pic2.jpg",
                "4 min min", "chat"),
            chatTile(size, "Pagal", "julie", "assets/pics/pic1.png",
                "4 min min", "chat"),
            chatTile(size, "Billy Boys", "Billy", "assets/pics/pic2.jpg",
                "20 min", "chat")
          ],
        ),
      ),
    );
  }
}
