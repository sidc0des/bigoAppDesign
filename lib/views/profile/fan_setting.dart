import 'package:flutter/material.dart';
class fan_setting extends StatefulWidget {
  @override
  _fan_settingState createState() => _fan_settingState();
}

class _fan_settingState extends State<fan_setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Setting",style: TextStyle(color: Colors.black),),
        leading:IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
