import 'package:flutter/material.dart';

import '../../../theme.dart';
class mypost_post extends StatefulWidget {
  @override
  mypost__postState createState() => mypost__postState();
}

class mypost__postState extends State<mypost_post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.pages,color: coolBlue,size: 150,),
            SizedBox(height: 10),
            Text("No Posts",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 6),
            Text("Make a post to get new friends!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}
