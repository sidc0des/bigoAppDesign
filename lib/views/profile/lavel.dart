import 'dart:ui';

import 'package:bingo/theme.dart';
import 'package:flutter/material.dart';

class Lavel extends StatefulWidget {
  @override
  _LavelState createState() => _LavelState();
}

class _LavelState extends State<Lavel> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("Level"),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: size.height / 2.2,
                    width: size.width,
                    child: Image.asset(
                      "assets/lavel.jpg",
                      fit: BoxFit.cover,
                    )),
                Container(
                  height: size.height / 2.2,
                  width: size.width,
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.screen,
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.center),
                  ),
                ),
                Container(
                  height: size.height / 2.2,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage("assets/girls/girl1.png"),
                          ),
                          Positioned(
                              bottom: -5,
                              left: 25,
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(color: Colors.yellowAccent, borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                                  child: Center(child: Text("Lv 21")),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 6,
                            width: size.width - 40,
                            decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            height: 6,
                            width: size.width / 3,
                            decoration: BoxDecoration(color: Colors.blue[700], borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lv 21",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "2500/5000",
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Medal Reward",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The higher your lavel is, the cooler medal you'll get",
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 80,
                  width: size.width - 40,
                  decoration: BoxDecoration(color: Colors.yellow[300], borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                              child: Center(child: Text("Lv 21")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                              child: Center(child: Text("Lv 40")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                              child: Center(child: Text("Lv 30")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                              child: Center(child: Text("Lv 80")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                              child: Center(child: Text("Lv 91")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.green[700], borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                              child: Center(child: Text("Lv 32")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                              child: Center(child: Text("Lv 47")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                              child: Center(child: Text("Lv 84")),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Pedent reward",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The higher your lavel is, the more honorable pendent you'll get",
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/girls/girl2.jpg"),
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/girls/girl1.png"),
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/girls/girl3.jpg"),
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/girls/girl1.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "How to upgade?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.blue[300],
                        backgroundImage: AssetImage("assets/bean.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Check In",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Up to 25 Exp. per day",
                            style: TextStyle(color: Colors.grey[600], fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.blue[300],
                        backgroundImage: AssetImage("assets/bean.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Watch Live",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Up to 30 Exp. per day",
                            style: TextStyle(color: Colors.grey[600], fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.blue[300],
                        backgroundImage: AssetImage("assets/bean.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Share Live Room",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Up to 30 Exp. per day",
                            style: TextStyle(color: Colors.grey[600], fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.blue[300],
                        backgroundImage: AssetImage("assets/bean.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Send gifts",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Up to 1 diamond and you may gain 5 Exp.",
                            style: TextStyle(color: Colors.grey[600], fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.blue[300],
                        backgroundImage: AssetImage("assets/bean.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Receive Gifts",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Receive one bean and you can gain 3 Exp.",
                            style: TextStyle(color: Colors.grey[600], fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.blue[300],
                        backgroundImage: AssetImage("assets/bean.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Accelerate",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Advaced VIP can get accelerated\nupgrade privilages",
                            style: TextStyle(color: Colors.grey[600], fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
