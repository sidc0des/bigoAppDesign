import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class NearbyLive extends StatefulWidget {
  @override
  _NearbyLiveState createState() => _NearbyLiveState();
}

class _NearbyLiveState extends State<NearbyLive> {
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
                nearbylivecard(
                    size, "assets/pics/pic1.png", "Jaya", "120", "20"),
                nearbylivecard(
                    size, "assets/pics/pic1.png", "Sonam", "200", "2.6")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                nearbylivecard(
                    size, "assets/pics/pic2.jpg", "kim", "700", "10.6"),
                nearbylivecard(
                    size, "assets/pics/pic2.jpg", "Sona", "10", "200")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                nearbylivecard(
                    size, "assets/pics/pic1.png", "Jaya", "120", "20"),
                nearbylivecard(
                    size, "assets/pics/pic1.png", "Jaya", "120", "20")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                nearbylivecard(
                    size, "assets/pics/pic2.jpg", "kim", "700", "10.6"),
                nearbylivecard(
                    size, "assets/pics/pic2.jpg", "Sona", "10", "200")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                nearbylivecard(
                    size, "assets/pics/pic3.jpg", "Jaya", "120", "20"),
                nearbylivecard(
                    size, "assets/pics/pic3.jpg", "Jaya", "120", "20")
              ],
            )
          ],
        ),
      ),
    );
  }
}
