import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';
class itembag_tool extends StatefulWidget {
  @override
  _itembag_toolState createState() => _itembag_toolState();
}

class _itembag_toolState extends State<itembag_tool> {
  Widget card_custom(String head,String footer,IconData p){
    return Container(
      height: 130,
      width: 110,
      // color: Colors.red,
      child: Card(
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(head,style: TextStyle(fontSize: 15),),
            SizedBox(
              height: 18,
            ),
            Icon(p,size: 50,color: Colors.grey,),
            SizedBox(
              height: 20,
            ),
            Text(footer,style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            color: Colors.grey[100],
            child: Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.verified,color: coolBlue,),
                SizedBox(
                  width: 8,
                ),
                Text("Tools in use"),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                card_custom("Entrance effect","None",Icons.move_to_inbox_outlined),
                card_custom("Medal","None",Icons.move_to_inbox_outlined),
                card_custom("Entrance effect","None",Icons.move_to_inbox_outlined),
                card_custom("Medal","None",Icons.move_to_inbox_outlined),
                card_custom("Entrance effect","None",Icons.move_to_inbox_outlined),
                card_custom("Medal","None",Icons.move_to_inbox_outlined),
                card_custom("Entrance effect","None",Icons.move_to_inbox_outlined),
                card_custom("Medal","None",Icons.move_to_inbox_outlined),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            color: Colors.grey[100],
            child: Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.star,color: coolBlue,),
                SizedBox(
                  width: 8,
                ),
                Text("All Tools"),
              ],
            ),
          ),
          Center(
            child: Image(image:AssetImage('assets/bigo.png'),
            height: 200,
            width: 200,),
          ),
          Center(child: Text("You tool is empty",style: TextStyle(color: Colors.grey),)),
        ],
      ),
    );
  }
}
