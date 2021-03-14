import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
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
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20"),
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20"),
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20"),
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20"),
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20"),
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20"),
              nearbylivecard(size, "assets/pics/pic1.png", "Jaya", "120", "20")
            ],
          )
        ],
      ),
    ));
  }
}
