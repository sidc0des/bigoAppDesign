import 'dart:ui';

import 'package:bingo/views/home/search.dart';
import 'package:bingo/views/multiUses/qr_scan.dart';
import 'package:bingo/views/profile/activities.dart';
import 'package:bingo/views/profile/authentication_center.dart';
import 'package:bingo/views/profile/detailedProfile.dart';
import 'package:bingo/views/profile/fan_home.dart';
import 'package:bingo/views/profile/itembag_home.dart';
import 'package:bingo/views/profile/lavel.dart';
import 'package:bingo/views/profile/messages.dart';
import 'package:bingo/views/profile/myposts.dart';
import 'package:bingo/views/profile/setting.dart';
import 'package:bingo/views/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Me",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Search()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(Icons.search,
                                  size: 25, color: Colors.grey),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailedProfile()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.person_outline,
                                size: 25,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage("assets/pics/pic1.png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Saloni",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.green,
                          size: 18,
                        )
                      ],
                    ),
                    Text(
                      "ID: 87897987",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.amber[400]),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.crown,
                                color: Colors.white,
                                size: 14,
                              ),
                              Text(
                                "     Check My VIP",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("398"),
                              Text(
                                "Friends",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("2898"),
                              Text(
                                "Following",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("2 M"),
                              Text(
                                "Fans",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ListTile(
                  leading: Icon(
                    Icons.post_add,
                    color: Colors.cyanAccent,
                  ),
                  title: Text(
                    "My Posts",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => posts()));
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Messages()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.chat,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Messages",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.monetization_on,
                    color: Colors.brown,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => wallet()));
                  },
                  title: Text(
                    "Wallet",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.verified,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Authentication Center",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => auth_center()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.userFriends,
                    color: Colors.amber[700],
                  ),
                  title: Text(
                    "Family",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.heartbeat,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Fans",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => fan()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.check_box,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Task Center",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.folder,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Item Bag",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => itembag()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.speaker,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Activities",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Activities()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.star_border_purple500_outlined,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Fame Medel Wall",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lavel()));
                  },
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.medal,
                      color: Colors.yellow,
                    ),
                    title: Text(
                      "Level",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QRViewE()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.qr_code,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Scan Qr Code",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => setting()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Help & Feedback",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
