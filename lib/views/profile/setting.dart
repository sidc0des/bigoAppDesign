import 'package:flutter/material.dart';
class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Settings",style: TextStyle(color: Colors.black),),
        leading:IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: 200,
          color: Colors.grey[50],
          child: Column(
            children: [
              SizedBox(
                height: 18,
              ),
              Container(
                // padding: EdgeInsets.only(top:8),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Fun in BIGO"),
                    ),
                    ListTile(
                      title: Text("Notifications"),
                    ),
                    ListTile(
                      title: Text("Privacy"),
                    ),
                    ListTile(
                      title: Text("Video Quality"),
                    ),
                    ListTile(
                      title: Text("Blocked List"),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 18,
              ),
              Container(
                // padding: EdgeInsets.only(top:8),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Account management"),
                    ),
                    ListTile(
                      title: Text("About Us"),
                    ),
                    ListTile(
                      title: Text("Help Us Translate"),
                    ),
                    ListTile(
                      title: Text("Clean Cache"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                // padding: EdgeInsets.only(top:8),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Log Out"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomSheet: Container(
      //   height: 60,
      //   width: MediaQuery.of(context).size.width,
      //   child: Text("yer"),
      // ),
    );
  }
}
