import 'package:bingo/widgets/containers.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 5.0, bottom: 0),
                  child: Text(
                    "Explore",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      exploreTitle('assets/new.jpg', "#new", Colors.indigo),
                      exploreTitle(
                          'assets/chat.jpg', "#Chat", Colors.yellow[600]),
                      exploreTitle('assets/hot.png', "#Hot", Colors.red),
                      exploreTitle(
                          'assets/music.jpg', "#Music", Colors.blue[600]),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Countries & Regions"), Text("More")],
                ),
              ),
              Container(
                height: 150,
                child: Image.asset('assets/Countries.jpg'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Hot LIVE"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (2 / 3) - 5,
                      width: size.width * (2 / 3) - 5,
                      child: Image.asset('assets/hot.png'),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: size.width * (1 / 3) - 2.5,
                          width: size.width * (1 / 3) - 5,
                          child: Image.asset('assets/music.jpg'),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: size.width * (1 / 3) - 2.5,
                          width: size.width * (1 / 3) - 5,
                          child: Image.asset('assets/chat.jpg'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/new.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/music.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/hot.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/new.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/music.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/hot.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/new.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/music.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/hot.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/new.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/music.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/hot.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: size.width * (1 / 3) - 2.5,
                      width: size.width * (1 / 3) - 5,
                      child: Image.asset(
                        'assets/pics/pic1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
