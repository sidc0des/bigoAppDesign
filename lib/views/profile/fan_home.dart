import 'package:bingo/views/profile/fan_hot.dart';
import 'package:bingo/views/profile/fan_new.dart';
import 'package:bingo/views/profile/fan_setting.dart';
import 'package:flutter/material.dart';
class fan extends StatefulWidget {
  @override
  _fanState createState() => _fanState();
}

class _fanState extends State<fan> {
  int _index = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Fan Group",style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings,color: Colors.black,),
            onPressed: () {
              Navigator.push(context,  MaterialPageRoute(builder: (context) => fan_setting()));
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,//350,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top:28.0,left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Fan group i joined",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 0;
                        _pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      });
                    },
                    child: Container(
                      child: Text("New",style: TextStyle(fontWeight: FontWeight.bold,color: (_index == 0)?Colors.black:Colors.grey),),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  VerticalDivider(
                    thickness: 50,
                    width: 20,
                    color: Colors.red,
                    endIndent: 0,
                    indent: 0,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 1;
                        _pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      });
                    },
                    child: Container(
                      child: Text("Hot",style: TextStyle(fontWeight: FontWeight.bold,color: (_index == 1)?Colors.black:Colors.grey),),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  onPageChanged: (val) {
                    setState(() {
                      _index = val;
                    });
                  },
                  allowImplicitScrolling: true,
                  controller: _pageController,
                  children: [fan_new(), fan_hot()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
