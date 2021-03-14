import 'package:bingo/views/live/goLive.dart';
import 'package:flutter/material.dart';

import 'multiguest.dart';

class Live extends StatefulWidget {
  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [GoLive(), GoLiveAlone()],
      ),
    );
  }
}
