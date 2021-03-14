import 'package:bingo/theme.dart';
import 'package:bingo/widgets/containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class multi_guest_all extends StatefulWidget {
  @override
  _multi_guest_allState createState() => _multi_guest_allState();
}

class _multi_guest_allState extends State<multi_guest_all> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(left: BorderSide(width: 4, color: coolBlue))),
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Let's Party",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
            Column(
              children: [
                chatTile(size, "Come and play", "siya", "assets/pics/pic1.png",
                    "2 min", "Live"),
                chatTile(size, "Come and play", "Urvashi",
                    "assets/pics/pic1.png", "10 min", "Live"),
                chatTile(size, "Pagal", "Jakir", "assets/pics/pic1.png",
                    "4 min min", "Live"),
              ],
            ),
            FlatButton(
                onPressed: () {},
                minWidth: size.width,
                child: Text(
                  "See All >",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )),
            Container(
              height: 10,
              color: Colors.grey[100],
              width: size.width,
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  border: Border(left: BorderSide(width: 4, color: coolBlue))),
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Hot",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      meetContainer(size, "assets/pics/pic1.png", "hey boys",
                          "10", "in Space"),
                      meetContainer(
                          size, "assets/pics/pic1.png", "hi", "10", "jaipur"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      meetContainer(
                          size, "assets/pics/pic1.png", "f u", "23", "Delhi"),
                      meetContainer(size, "assets/pics/pic1.png", "ping me",
                          "456", "Kerla"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      meetContainer(size, "assets/pics/pic1.png", "welcome",
                          "1045", "Landon"),
                      meetContainer(size, "assets/pics/pic1.png", "party time",
                          "170", "Usa"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
