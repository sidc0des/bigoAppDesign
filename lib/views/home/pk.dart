import 'package:flutter/material.dart';
import 'package:bingo/widgets/containers.dart';

class PK extends StatefulWidget {
  @override
  _PKState createState() => _PKState();
}

class _PKState extends State<PK> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Pk_game_card(size, 'assets/pics/pic1.png', "soniya", "20",
                'assets/pics/pic1.png', "reshmi", "20"),
            Pk_game_card(size, 'assets/pics/pic1.png', "somya", "20",
                'assets/pics/pic1.png', "roohi", "20"),
            Pk_game_card(size, 'assets/pics/pic1.png', "kamya", "20",
                'assets/pics/pic1.png', "sanjana", "20"),
            Pk_game_card(size, 'assets/chat.jpg', "saloni", "20",
                'assets/music.jpg', "jaya", "20"),
            Pk_game_card(size, 'assets/chat.jpg', "harshita", "20",
                'assets/music.jpg', "lavanya", "20"),
            Pk_game_card(size, 'assets/pics/pic1.png', "soniya", "20",
                'assets/pics/pic1.png', "sanjana", "20"),
            Pk_game_card(size, 'assets/pics/pic1.png', "somya", "20",
                'assets/pics/pic1.png', "roohi", "20"),
            Pk_game_card(size, 'assets/pics/pic1.png', "kamya", "20",
                'assets/pics/pic1.png', "sanjana", "20"),
            Pk_game_card(size, 'assets/pics/pic1.png', "somya", "20",
                'assets/pics/pic1.png', "roohi", "20"),
            Pk_game_card(size, 'assets/pics/pic1.png', "kamya", "20",
                'assets/pics/pic1.png', "sanjana", "20"),
            Pk_game_card(size, 'assets/chat.jpg', "saloni", "20",
                'assets/music.jpg', "jaya", "20"),
            Pk_game_card(size, 'assets/chat.jpg', "harshita", "20",
                'assets/music.jpg', "lavanya", "20"),
          ],
        ),
      ),
    ));
  }
}
