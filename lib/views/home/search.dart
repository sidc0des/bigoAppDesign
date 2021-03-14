import 'package:bingo/theme.dart';
import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 28,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: greycardColor,
                child: SizedBox(
                  height: 40,
                  width: size.width - 100,
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: greycardColor,
                          hintText: "Search username/ID",
                          hintStyle: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(Icons.qr_code),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Discover Friends",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Color(0xFF3C5998),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Image.asset(
                                  "assets/icons/facebook.png",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Text(
                                "Facebook\nfriends",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Container(
                        height: 40,
                        width: .6,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: brightBlue,
                            child: Icon(
                              Icons.contact_page,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9),
                            child: Text(
                              "Contacts",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Text(
                    "you may like",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Salini"),
              searchFollow(url: "assets/pics/pic1.png", name: "Rashmi"),
              searchFollow(url: "assets/pics/pic1.png", name: "Salini"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Salini"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Salini"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Salini"),
              searchFollow(url: "assets/pics/pic1.png", name: "Rashmi"),
              searchFollow(url: "assets/pics/pic1.png", name: "Salini"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Salini"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Salini"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
              searchFollow(url: "assets/pics/pic1.png", name: "Suhani"),
            ],
          ),
        ),
      ),
    );
  }
}
