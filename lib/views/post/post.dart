import 'package:bingo/theme.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: blueColorLight,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 17,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "ID:87678686",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          actions: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(right: 7),
              child: Text(
                "Post",
                style: TextStyle(color: blueColorBright, fontSize: 17),
              ),
            ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "What's on your mind ?",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  maxLines: 7,
                ),
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(color: greycardColor, borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Row(
                          children: [
                            Icon(
                              Icons.text_fields,
                              color: Colors.grey,
                              size: 15,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Text",
                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                      decoration: BoxDecoration(color: greycardColor, borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Row(
                          children: [
                            Text(
                              "@ ",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Friends",
                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                      decoration: BoxDecoration(color: greycardColor, borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Row(
                          children: [
                            Icon(
                              Icons.emoji_emotions,
                              color: Colors.grey,
                              size: 15,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Emoji",
                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: SizedBox(
                  height: 28,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: .5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "All",
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: .5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "# Saree looks",
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: .5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "# love",
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: .5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "# dance",
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: .5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "# masti",
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: .5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "# magic",
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: .5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  "# ayashi",
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Image.asset('assets/editPost.png')],
              ))
            ],
          ),
        ));
  }
}
