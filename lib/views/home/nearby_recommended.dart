import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            livePerson(
              size: size,
              avtarUrl: "assets/pics/pic1.png",
              postUrl: "assets/pics/pic1.png",
              name: "priya",
              distance: "20",
              like: "200",
              comment: "20",
              share: "10",
              live: true,
            ),
            imagesPost(
              size: size,
              avtarUrl: "assets/pics/pic2.jpg",
              postUrl: "assets/pics/pic2.jpg",
              name: "Komal",
              distance: "20",
              like: "200",
              comment: "20",
              share: "10",
              live: true,
            ),
            livePerson(
              size: size,
              avtarUrl: "assets/pics/pic3.jpg",
              postUrl: "assets/pics/pic3.jpg",
              name: "Riya",
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
              name: "Riya",
              distance: "20",
              like: "200",
              comment: "20",
              share: "10",
              live: true,
            ),
            livePerson(
              size: size,
              avtarUrl: "assets/pics/pic2.jpg",
              postUrl: "assets/pics/pic2.jpg",
              name: "jatin",
              distance: "20",
              like: "200",
              comment: "20",
              share: "10",
              live: true,
            ),
            imagesPost(
              size: size,
              avtarUrl: "assets/pics/pic3.jpg",
              postUrl: "assets/pics/pic3.jpg",
              name: "priya",
              distance: "20",
              like: "200",
              comment: "20",
              share: "10",
              live: true,
            ),
            livePerson(
              size: size,
              avtarUrl: "assets/pics/pic1.png",
              postUrl: "assets/pics/pic1.png",
              name: "Varonica",
              distance: "20",
              like: "200",
              comment: "20",
              share: "10",
              live: true,
            ),
            imagesPost(
              size: size,
              avtarUrl: "assets/pics/pic2.jpg",
              postUrl: "assets/pics/pic2.jpg",
              name: "Siya",
              distance: "20",
              like: "200",
              comment: "20",
              share: "10",
              live: true,
            ),
          ],
        ),
      ),
    );
  }
}
