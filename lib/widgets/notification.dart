import 'package:flutter/material.dart';

import '../theme.dart';
class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 0.0,
       backgroundColor: Colors.white,
       leading:IconButton(
         icon: const Icon(Icons.arrow_back,color: Colors.black,),
         onPressed: () {
           Navigator.pop(context);
         },
       ),
       title: Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
     ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.notifications_none_rounded,color: coolBlue,size: 150,),
              SizedBox(height: 10),
              Text("No new notification from your",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              Text("Post. Go and make a great post",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 16),
              FlatButton(
                onPressed: null,
                minWidth: 150,
                height: 40,
                color: coolBlue,
                child: Text("Go to Post"),
                // color: coolBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: coolBlue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
