import 'package:flutter/material.dart';

import '../../theme.dart';
class auth_center extends StatefulWidget {
  @override
  _auth_centerState createState() => _auth_centerState();
}

class _auth_centerState extends State<auth_center> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Authentication Center",style: TextStyle(color: Colors.black),),
        leading:IconButton(
      icon: const Icon(Icons.arrow_back,color: Colors.black,),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline,color: Colors.grey,),
            onPressed: () {
              // Navigator.push(context,  MaterialPageRoute(builder: (context) => notification()));
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,//350,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image(image: AssetImage('assets/hot.png'),
                    height: 110.0,
                    width: 110.0,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("You have not completed the authentication",textAlign: TextAlign.center,style: TextStyle(fontSize: 23,color: Colors.black),),
                SizedBox(
                  height: 10,
                ),
                Text("Complete Authentication now to enjoy the following privileges",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
                SizedBox(
                  height: 25,
                ),
                ListTile(
                  tileColor: Colors.grey[50],
                  leading: Icon(Icons.verified),
                  title: Text("Exclusive authentication badge",style: TextStyle(fontSize: 15),),
                  contentPadding: const EdgeInsets.only(left:5),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  tileColor: Colors.grey[50],
                  leading: Icon(Icons.chat_bubble),
                  title: Text("Priority In-app Message",style: TextStyle(fontSize: 15),),
                  contentPadding: const EdgeInsets.only(left:5),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("They have completed the authentication",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image(image: AssetImage('assets/hot.png'),
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image(image: AssetImage('assets/hot.png'),
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image(image: AssetImage('assets/hot.png'),
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image(image: AssetImage('assets/hot.png'),
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Activate authentication now",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color: Color(0xff01c5c4),
                  minWidth: 150,
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
