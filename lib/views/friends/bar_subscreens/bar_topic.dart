import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bingo/widgets/containers.dart';
class bar_topic extends StatefulWidget {
  @override
  _bar_topicState createState() => _bar_topicState();
}

class _bar_topicState extends State<bar_topic> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            bar_topic_tile(size,"Selfie"),
            SizedBox(height: 20,),
            bar_topic_tile(size,"Selfie"),
            SizedBox(height: 20,),
            bar_topic_tile(size,"Selfie"),
            SizedBox(height: 20,),
            bar_topic_tile(size,"Selfie"),
          ],
        ),
      ),
    );
  }
}
