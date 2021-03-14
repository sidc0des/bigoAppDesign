import 'package:bingo/theme.dart';
import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class Meetup extends StatefulWidget {
  @override
  _MeetupState createState() => _MeetupState();
}

class _MeetupState extends State<Meetup> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width / 2 - 10,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.pink[600],
                ),
                child: Center(
                  child: Text(
                    "Call Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ),
              ),
              Container(
                width: size.width / 2 - 10,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue[600],
                ),
                child: Center(
                  child: Text(
                    "Video match",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: size.width - 10,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.blue[600],
            ),
            child: Center(
              child: Text(
                "323243 People Online",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 2,
                      color: coolBlue,
                    ),
                    Text(" Let's Party"),
                  ],
                ),
                Icon(Icons.help)
              ],
            ),
          ),
          chatTile(size, "Come and play", "siya", "assets/pics/pic1.png",
              "2 min", "chat"),
          chatTile(size, "Come and play", "Urvashi", "assets/pics/pic1.png",
              "10 min", "chat"),
          chatTile(size, "Pagal", "jasmine", "assets/pics/pic1.png",
              "4 min min", "chat"),
          chatTile(size, "Pagal", "ruhi", "assets/pics/pic1.png", "4 min min",
              "chat"),
          chatTile(size, "Pagal", "sanya", "assets/pics/pic1.png", "4 min min",
              "chat"),
          chatTile(size, "Pagal", "Himani", "assets/pics/pic1.png", "4 min min",
              "chat"),
          chatTile(size, "Pagal", "julie", "assets/pics/pic1.png", "4 min min",
              "chat"),
          chatTile(size, "Billy Boys", "Billy", "assets/pics/pic1.png",
              "20 min", "chat"),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 2,
                      color: coolBlue,
                    ),
                    Text(" Make new Friends"),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              meetContainer(
                  size, "assets/pics/pic1.png", "hey boys", "10", "in Space"),
              meetContainer(size, "assets/pics/pic1.png", "hi", "10", "jaipur"),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              meetContainer(size, "assets/pics/pic1.png", "f u", "23", "Delhi"),
              meetContainer(
                  size, "assets/pics/pic1.png", "ping me", "456", "Kerla"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              meetContainer(
                  size, "assets/pics/pic1.png", "welcome", "1045", "Landon"),
              meetContainer(
                  size, "assets/pics/pic1.png", "party time", "170", "Usa"),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              meetContainer(size, "assets/pics/pic1.png", "f u", "23", "Delhi"),
              meetContainer(
                  size, "assets/pics/pic1.png", "ping me", "456", "Kerla"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              meetContainer(
                  size, "assets/pics/pic1.png", "welcome", "1045", "Landon"),
              meetContainer(
                  size, "assets/pics/pic1.png", "party time", "170", "Usa"),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              meetContainer(size, "assets/pics/pic1.png", "f u", "23", "Delhi"),
              meetContainer(
                  size, "assets/pics/pic1.png", "ping me", "456", "Kerla"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              meetContainer(
                  size, "assets/pics/pic1.png", "welcome", "1045", "Landon"),
              meetContainer(
                  size, "assets/pics/pic1.png", "party time", "170", "Usa"),
            ],
          ),
        ],
      ),
    ));
  }
}
