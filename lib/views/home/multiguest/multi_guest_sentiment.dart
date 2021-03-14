import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class multi_guest_sentiment extends StatefulWidget {
  @override
  _multi_guest_sentimentState createState() => _multi_guest_sentimentState();
}

class _multi_guest_sentimentState extends State<multi_guest_sentiment> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                meetContainer(
                    size, "assets/pics/pic1.png", "f u", "23", "Delhi"),
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
                meetContainer(
                    size, "assets/pics/pic1.png", "hey boys", "10", "in Space"),
                meetContainer(
                    size, "assets/pics/pic1.png", "hi", "10", "jaipur"),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                meetContainer(
                    size, "assets/pics/pic1.png", "f u", "23", "Delhi"),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                meetContainer(
                    size, "assets/pics/pic1.png", "f u", "23", "Delhi"),
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
      ),
    );
  }
}
