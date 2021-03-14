import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailedProfile extends StatefulWidget {
  @override
  _DetailedProfileState createState() => _DetailedProfileState();
}

class _DetailedProfileState extends State<DetailedProfile> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("ID:23423423")],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.edit,
              size: 20,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.width,
              width: size.width,
              child: Image.asset("assets/girls/girl3.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ID:2345345",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      "ID:2345345",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_city,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              " delhi, India (0km)",
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                        Text(
                          "45 minutes ago",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "200",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "Fans",
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "300",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("Following")
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "20",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("Beans")
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "200",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("Diamonds")
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.brown,
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ),
                            Text(" Fame medal"),
                          ],
                        ),
                        Text(
                          "witness your fame >",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.yellowAccent,
                              child: Icon(
                                FontAwesomeIcons.trophy,
                                size: 25,
                                color: Colors.black,
                              ),
                            ),
                            Text(" Contribution"),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              child: Icon(
                                FontAwesomeIcons.trophy,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              child: Icon(
                                FontAwesomeIcons.trophy,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              child: Icon(
                                FontAwesomeIcons.trophy,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              " >",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.pink,
                              child: Icon(
                                FontAwesomeIcons.heart,
                                size: 25,
                              ),
                            ),
                            Text(" Dating information"),
                          ],
                        ),
                        Text(
                          " >",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
