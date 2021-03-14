import 'package:flutter/material.dart';
class item_bag_expired extends StatefulWidget {
  @override
  _item_bag_expiredState createState() => _item_bag_expiredState();
}

class _item_bag_expiredState extends State<item_bag_expired> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expired",style: TextStyle(color: Colors.black),),
        leading:IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image:AssetImage('assets/bigo.png'),
              height: 200,
              width: 200,),
            Center(child: Text("No Record",style: TextStyle(color: Colors.grey),)),
          ],
        ),
      ),
    );
  }
}
