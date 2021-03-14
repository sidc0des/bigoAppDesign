import 'package:flutter/material.dart';

import '../../../theme.dart';
class liked extends StatefulWidget {
  @override
  _likedState createState() => _likedState();
}

class _likedState extends State<liked> {
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
              Text("You don't have any favorite",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              Text("posts, go and see now?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 6),
              Text("Make a post to get new friends!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ],
          ),
      ),
    );
  }
}
