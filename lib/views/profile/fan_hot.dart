import 'package:flutter/material.dart';
class fan_hot extends StatefulWidget {
  @override
  _fan_hotState createState() => _fan_hotState();
}

class _fan_hotState extends State<fan_hot> {
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
