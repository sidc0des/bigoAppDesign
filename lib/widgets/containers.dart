import 'package:bingo/widgets/custom_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme.dart';

Widget exploreTitle(String image, String title, Color color) {
  return Padding(
    padding: const EdgeInsets.all(2.5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset(image),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [color, Colors.transparent])),
              )),
          Positioned(
              bottom: 5,
              left: 5,
              child: Text(
                title,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ))
        ],
      ),
    ),
  );
}

Widget post(
  Size size,
  String name,
  String time,
  String userurl,
  String posturl,
  String postText,
  int likes,
  int comment,
  bool showFollow,
) {
  return Container(
    width: size.width,
    margin: EdgeInsets.all(8),
    child: Column(
      children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(userurl),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "$time minutes",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
              if (showFollow) ...[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 0.3)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: coolBlue,
                          size: 18,
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                )
              ]
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(postText),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 200,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey),
                  child: Image.network(
                    posturl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(FontAwesomeIcons.heart),
                  SizedBox(
                    width: 4,
                  ),
                  Text("$likes"),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(FontAwesomeIcons.comment),
                  SizedBox(
                    width: 4,
                  ),
                  Text("$comment"),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(Icons.share)
                ],
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Image.asset(
                    'assets/hello.png',
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget chatTile(Size size, String title, String name, String profileurl,
    String time, String type) {
  double width = size.width;
  double height = size.height;
  return Padding(
    padding:
        EdgeInsets.symmetric(horizontal: width * 0.06, vertical: height * 0.02),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: width * 0.08,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage(profileurl),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.black, width: width * 0.000002)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03, vertical: height * 0.008),
                  child: type == "chat"
                      ? Row(
                          children: [
                            Icon(
                              Icons.chat,
                              color: coolBlue,
                              size: 18,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "chat",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        )
                      : Row(
                          children: [
                            Icon(
                              Icons.bar_chart,
                              color: coolBlue,
                              size: 18,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "LIVE",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget nearbylivecard(
    Size size, String photoUrl, String title, String online, String location) {
  double width = size.width;
  double height = size.height;
  return Container(
    padding: EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.transparent,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                photoUrl,
                fit: BoxFit.cover,
                height: width / 2 - 10,
                width: width / 2 - 10,
              ),
            ),
            Positioned(
                top: 7,
                right: 7,
                child: Text(
                  online,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${location}km",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.volume_up_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              bottom: 7,
              left: 7,
            )
          ],
        ),
      ],
    ),
  );
}

Widget Pk_game_card(Size size, String photourl1, String name1, String score1,
    String photourl2, String name2, String score2) {
  return Container(
    padding: EdgeInsets.only(top: 10),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: (size.width / 2) - (size.width * 0.028),
                        height: (size.width / 2) - (size.width * 0.028),
                        child: Container(
                          width: (size.width / 2) - (size.width * 0.028),
                          color: Colors.black,
                          child: Image.asset(
                            photourl1,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: (size.width * 0.028),
                        left: size.height * 0.018,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.yellow[700],
                              child: Center(
                                child: Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              name1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        width: (size.width / 2) - (size.width * 0.028),
                        height: (size.width / 2) - (size.width * 0.028),
                        child: Container(
                          color: Colors.red,
                          width: (size.width / 2) - (size.width * 0.028),
                          child: Image.asset(
                            photourl2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: (size.width * 0.028),
                        left: size.height * 0.018,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.blue,
                              child: Center(
                                child: Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              name2,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(8))),
                    width: (size.width / 2) - (size.width * 0.028),
                    height: size.height * 0.024,
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            score1,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(8))),
                    width: (size.width / 2) - (size.width * 0.028),
                    height: size.height * 0.024,
                    child: Padding(
                      padding: EdgeInsets.only(right: size.width * 0.025),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            score2,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Center(
                  child: Text(
                "PK",
                style: TextStyle(color: Colors.white, fontSize: 14),
              )),
            )),
      ],
    ),
  );
}

Widget meetContainer(
    Size size, String photoUrl, String title, String online, String location) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.transparent,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                photoUrl,
                fit: BoxFit.cover,
                height: ((size.height) * 0.5) - ((size.height) * 0.25),
                width: ((size.width) * 0.5) - ((size.width) * 0.05),
              ),
            ),
            Positioned(
                top: ((size.height) * 0.015),
                right: ((size.width) * 0.03),
                child: Text(
                  online,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
            Positioned(
                bottom: ((size.height) * 0.015),
                left: ((size.width) * 0.17),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18.9,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(photoUrl),
                  ),
                )),
            Positioned(
                bottom: ((size.height) * 0.015),
                left: ((size.width) * 0.097),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18.9,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(photoUrl),
                  ),
                )),
            Positioned(
                bottom: ((size.height) * 0.015),
                left: ((size.width) * 0.027),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18.9,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(photoUrl),
                  ),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.pin_drop,
                    size: 15,
                    color: Colors.grey[350],
                  ),
                  SizedBox(
                    width: ((size.width) * 0.008),
                  ),
                  Text(
                    location,
                    style: TextStyle(fontSize: 12, color: Colors.grey[350]),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget livetile(String tileurl) {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: Colors.red,
          // height: 80,
          // width: width*0.4,
          child: Image.asset(
            tileurl,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      Positioned(
        child: FlatButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.bar_chart,
                color: coolBlue,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "LIVE",
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            // side: BorderSide(color: Colors.red)
          ),
        ),
        bottom: 8,
        right: 8,
      )
    ],
  );
}

Widget friends_follow_post(
    Size size,
    String avtarUrl,
    String name,
    String content,
    String distance,
    String like,
    String comment,
    String share,
    bool live,
    String tileurl) {
  double width = size.width;
  double height = size.height;
  return Container(
    width: width,
    // height: height*0.45,
    padding: EdgeInsets.symmetric(vertical: width * 0.025),
    margin: EdgeInsets.symmetric(horizontal: width * 0.025),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.02, vertical: height * 0.025),
          child: Row(
            children: [
              CircleAvatar(
                  radius: width * 0.065,
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage(avtarUrl)),
              SizedBox(
                width: width * 0.03,
              ),
              Container(
                // color: Colors.red,
                width: width * 0.73,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            "",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.black, width: width*0.000002)),
                    //   child: Padding(
                    //     padding: EdgeInsets.symmetric(horizontal: width*0.03, vertical: height*0.008),
                    //     child: Row(
                    //       children: [
                    //         Icon(
                    //           Icons.add,
                    //           color: coolBlue,
                    //           size: 18,
                    //         ),
                    //         Text(
                    //           "Follow",
                    //           style: TextStyle(fontSize: 15),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.04, bottom: height * 0.02),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(content),
            ],
          ),
        ),
        live
            ? Container(
                width: width * 0.9,
                height: height * 0.18,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        color: Colors.red,
                        // height: 80,
                        // width: width*0.4,
                        child: Image.asset(
                          "assets/pics/pic1.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.bar_chart,
                              color: coolBlue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "LIVE",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          // side: BorderSide(color: Colors.red)
                        ),
                      ),
                      bottom: 8,
                      right: 90,
                    ),
                    Positioned(
                      child: Text(
                        "45426 viewers",
                        style: TextStyle(color: Colors.white),
                      ),
                      top: 15,
                      right: 15,
                    ),
                  ],
                ),
              )
            : Container(
                padding: EdgeInsets.only(left: width * 0.04),
                height: height * 0.25,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        // height: 80,
                        width: width * 0.4,
                        child: Image.asset(
                          "assets/pics/pic1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        // height: 80,
                        width: width * 0.4,
                        child: Image.asset(
                          "assets/pics/pic1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        // height: 80,
                        width: width * 0.4,
                        child: Image.asset(
                          "assets/pics/pic1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        // height: 80,
                        width: width * 0.4,
                        child: Image.asset(
                          "assets/pics/pic1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.04, top: height * 0.02),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.heart),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(width: width * 0.09, child: Text(like)),
                    // SizedBox(
                    //   width: width*0.02,
                    // ),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(width: width * 0.09, child: Text(comment)),
                    Icon(Icons.share),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(width: width * 0.09, child: Text(share)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.03),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey[50],
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Image.asset(
                        'assets/hello.png',
                        color: Colors.blue,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget bar_topic_tile(Size size, String title) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.hashtag,
                  color: coolBlue,
                  size: 20,
                ),
                // Icon(Icons.drag_handle_sharp,color: coolBlue,size: 25,),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: Colors.grey,
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset('assets/hot.png',
                    fit: BoxFit.fill,
                    height: size.height * 0.19,
                    width: size.width * 0.35 //120,
                    ),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset('assets/hot.png',
                    fit: BoxFit.fill,
                    height: size.height * 0.19,
                    width: size.width * 0.35 //120,
                    ),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset('assets/hot.png',
                    fit: BoxFit.fill,
                    height: size.height * 0.19,
                    width: size.width * 0.35 //120,
                    ),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset('assets/hot.png',
                    fit: BoxFit.fill,
                    height: size.height * 0.19,
                    width: size.width * 0.35 //120,
                    ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget bar_pictures_tile(Size size, BuildContext context, String image) {
  return Container(
    width: (size.width / 2) - 10,
    height: size.height * 0.39,
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => custom_image_viewer(image)));
              },
              child: Container(
                  height: size.height * 0.25,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitHeight,
                  ))),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text("Hey friends"),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/hot.png',
                        fit: BoxFit.fill,
                        height: 28,
                        width: 28,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Icon(Icons.add, color: coolBlue)),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.heart,
                    size: 18,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("20"),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget status_card(String name, String url) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: coolBlue,
        radius: 33,
        child: CircleAvatar(
          radius: 31,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(url),
          ),
        ),
      ),
      Text(
        name,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
      )
    ],
  );
}

Widget nearbybarpost(
    Size size,
    String avtarUrl,
    String name,
    String content,
    String distance,
    String like,
    String comment,
    String share,
    bool live,
    String tileurl) {
  double width = size.width;
  double height = size.height;
  return Container(
    width: width,
    // height: height*0.45,
    padding: EdgeInsets.symmetric(vertical: width * 0.025),
    margin: EdgeInsets.symmetric(horizontal: width * 0.025),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage(avtarUrl)),
              SizedBox(
                width: 12,
              ),
              Container(
                width: width * 0.73,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            "2 days ago  20km",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: coolBlue,
                              size: 16,
                            ),
                            Text(
                              "Follow",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 60, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                content,
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "see translation",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                width: width * 0.7,
                height: width * 0.6,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: width * 0.7,
                        height: width * 0.6,
                        child: Image.asset(
                          tileurl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1, top: 6),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.heart,
                            size: 19,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            like,
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesomeIcons.comment,
                            size: 19,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            comment,
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.share,
                            size: 19,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.03),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.grey[50],
                          child: Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Image.asset(
                              'assets/hello.png',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // live
        //     ? Container(
        //         width: width * 0.7,
        //         height: width * 0.6,
        //         child: Stack(
        //           children: [
        //             ClipRRect(
        //               borderRadius: BorderRadius.circular(12),
        //               child: Container(
        //                 color: Colors.red,
        //                 width: width * 0.7,
        //                 height: width * 0.6,
        //                 child: Image.network(
        //                   "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       )
        //     : Container(
        //         padding: EdgeInsets.only(left: width * 0.04),
        //         height: height * 0.25,
        //         child: ListView(
        //           scrollDirection: Axis.horizontal,
        //           children: [
        //             ClipRRect(
        //               borderRadius: BorderRadius.circular(8),
        //               child: Container(
        //                 // height: 80,
        //                 width: width * 0.4,
        //                 child: Image.network(
        //                   "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //             ),
        //             SizedBox(
        //               width: 5,
        //             ),
        //             ClipRRect(
        //               borderRadius: BorderRadius.circular(8),
        //               child: Container(
        //                 // height: 80,
        //                 width: width * 0.4,
        //                 child: Image.network(
        //                   "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //             ),
        //             SizedBox(
        //               width: 5,
        //             ),
        //             ClipRRect(
        //               borderRadius: BorderRadius.circular(8),
        //               child: Container(
        //                 // height: 80,
        //                 width: width * 0.4,
        //                 child: Image.network(
        //                   "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //             ),
        //             SizedBox(
        //               width: 5,
        //             ),
        //             ClipRRect(
        //               borderRadius: BorderRadius.circular(8),
        //               child: Container(
        //                 // height: 80,
        //                 width: width * 0.4,
        //                 child: Image.network(
        //                   "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
      ],
    ),
  );
}

Widget imagesPost({
  @required Size size,
  @required String avtarUrl,
  @required String postUrl,
  @required String name,
  @required String distance,
  @required String like,
  @required String comment,
  @required String share,
  @required bool live,
}) {
  double width = size.width;
  double height = size.height;
  return Container(
    width: width,
    // height: height*0.45,
    padding: EdgeInsets.symmetric(vertical: width * 0.025),
    margin: EdgeInsets.symmetric(horizontal: width * 0.025),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 5),
          child: Row(
            children: [
              CircleAvatar(
                  radius: width * 0.065,
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage(avtarUrl)),
              SizedBox(
                width: width * 0.03,
              ),
              Container(
                // color: Colors.red,
                width: width * 0.73,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .8, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.access_alarm,
                                        size: 10,
                                        color: Colors.pink,
                                      ),
                                      Text(
                                        " $distance",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "  $distance km",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: .5)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: coolBlue,
                              size: 15,
                            ),
                            Text(
                              "Follow",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.18,
          ),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width - 90,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Roaming around in the city, drop a like and follow me",
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
                          color: Colors.red,
                          // height: 80,
                          // width: width*0.4,
                          child: Image.asset(
                            postUrl,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
                          color: Colors.red,
                          // height: 80,
                          // width: width*0.4,
                          child: Image.asset(
                            postUrl,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
                          color: Colors.red,
                          // height: 80,
                          // width: width*0.4,
                          child: Image.asset(
                            postUrl,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.heart,
                          size: 19,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          like,
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          FontAwesomeIcons.comment,
                          size: 19,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          comment,
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.share,
                          size: 19,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[200],
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Image.asset(
                            'assets/hello.png',
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget livePerson({
  @required Size size,
  @required String avtarUrl,
  @required String postUrl,
  @required String name,
  @required String distance,
  @required String like,
  @required String comment,
  @required String share,
  @required bool live,
}) {
  double width = size.width;
  double height = size.height;
  return Container(
    width: width,
    // height: height*0.45,
    padding: EdgeInsets.symmetric(vertical: width * 0.025),
    margin: EdgeInsets.symmetric(horizontal: width * 0.025),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: width * 0.072,
                backgroundColor: coolerBlue,
                child: CircleAvatar(
                    radius: width * 0.069,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                        radius: width * 0.065,
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage(avtarUrl))),
              ),
              SizedBox(
                width: width * 0.03,
              ),
              Container(
                width: width * 0.73,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .8, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.access_alarm,
                                        size: 10,
                                        color: Colors.pink,
                                      ),
                                      Text(
                                        " $distance",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "  $distance km",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: width * 0.2),
            child: Container(
              height: 100,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Container(
                      width: width,
                      child: Opacity(
                        opacity: .8,
                        child: Image.asset(
                          postUrl,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -23,
                    left: 20,
                    child: CircleAvatar(
                      radius: 76,
                      backgroundColor: Colors.white24,
                      child: CircleAvatar(
                        radius: 66,
                        backgroundColor: Colors.white30,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 56,
                          backgroundImage: AssetImage(postUrl),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 4),
                        child: Row(
                          children: [
                            Icon(
                              Icons.bar_chart,
                              color: coolBlue,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "LIVE",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    bottom: 9,
                    right: 9,
                  ),
                  Positioned(
                    child: Text(
                      "45426 viewers",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    top: 9,
                    right: 9,
                  ),
                ],
              ),
            )),
      ],
    ),
  );
}

Widget searchFollow({@required String url, @required String name}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(url),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue[400]),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Rising star",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 15,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.pink[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.ac_unit,
                                size: 12,
                                color: Colors.white,
                              ),
                              Text(
                                "18",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 0.3)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: coolBlue,
                  size: 18,
                ),
                Text(
                  "Follow",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget recommendedLive(
    {@required String url, @required String name, @required Size size}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: Container(
      height: 120,
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Container(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    url,
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width / 2 - 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: brightBlue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "in Space",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  "2 min",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/4seat.png',
                      height: 20,
                      width: 20,
                      color: Colors.grey,
                    ),
                    Text(
                      "multiGuest",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
//  Padding(
//           padding: EdgeInsets.only(left: width * 0.18),
//           child: live
//               ? Container(
//                   width: width * 0.9,
//                   height: height * 0.18,
//                   child: Stack(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(16),
//                         child: Container(
//                           color: Colors.red,
//                           // height: 80,
//                           // width: width*0.4,
//                           child: Image.asset(
//                             postUrl,
//                             fit: BoxFit.fitWidth,
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         child: FlatButton(
//                           onPressed: () {},
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.bar_chart,
//                                 color: coolBlue,
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Text(
//                                 "LIVE",
//                                 style: TextStyle(fontSize: 17),
//                               ),
//                             ],
//                           ),
//                           color: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(18.0),
//                             // side: BorderSide(color: Colors.red)
//                           ),
//                         ),
//                         bottom: 5,
//                         right: 30,
//                       ),
//                       Positioned(
//                         child: Text(
//                           "45426 viewers",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         top: 15,
//                         right: 15,
//                       ),
//                     ],
//                   ),
//                 )
//               : Container(
//                   height: height * 0.25,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Container(
//                           // height: 80,
//                           width: width * 0.4,
//                           child: Image.network(
//                             "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Container(
//                           // height: 80,
//                           width: width * 0.4,
//                           child: Image.network(
//                             "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Container(
//                           // height: 80,
//                           width: width * 0.4,
//                           child: Image.network(
//                             "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Container(
//                           // height: 80,
//                           width: width * 0.4,
//                           child: Image.network(
//                             "https://www.bridgestorecovery.com/wp-content/uploads/2017/10/Understanding-BPD-Emotional-Manipulation-Techniques-and-How-Treatment-Can-Help-1280x720.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//         ),
