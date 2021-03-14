import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  Widget card_activity(String title, String subtitle, String image) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            subtitle,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
          height: 90,
        ),
        SizedBox(
          height: 12,
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Activities",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 8),
        color: Colors.white,
        width: MediaQuery.of(context).size.width, //350,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              card_activity("To Be Popular", "CountDown >30 Days", "assets/bigo.png"),
              card_activity("VIP Day:Free for renewal !", "CountDown >30 Days", "assets/bigo.png"),
              card_activity("Family Monthly Honor Battle", "CountDown >30 Days", "assets/bigo.png"),
              card_activity("Summon Rare Gifts", "CountDown >30 Days", "assets/bigo.png"),
              card_activity("You are the super lucky star", "CountDown >30 Days", "assets/bigo.png"),
              // card_activity(),
            ],
          ),
        ),
      ),
    );
  }
}
