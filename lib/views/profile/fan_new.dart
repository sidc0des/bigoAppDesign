import 'package:flutter/material.dart';
class fan_new extends StatefulWidget {
  @override
  _fan_newState createState() => _fan_newState();
}

class _fan_newState extends State<fan_new> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(image: AssetImage('assets/fan_img.png'),
          height: 300.0,
          width: 300.0,
        ),
      ),
    );
  }
}
