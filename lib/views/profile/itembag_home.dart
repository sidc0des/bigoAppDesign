import 'package:bingo/views/profile/item_bag_expired.dart';
import 'package:bingo/views/profile/itembag_itembag.dart';
import 'package:bingo/views/profile/itembag_tools.dart';
import 'package:flutter/material.dart';
class itembag extends StatefulWidget {
  @override
  _itembagState createState() => _itembagState();
}

class _itembagState extends State<itembag> {
  int _index = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Bag",style: TextStyle(color: Colors.black),),
        leading:IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: GestureDetector(
              child: Center(child: Text("Expired",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              onTap: (){
                Navigator.push(context,  MaterialPageRoute(builder: (context) => item_bag_expired()));
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 0;
                        _pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Text("Tools",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: (_index == 0)?Colors.black:Colors.grey),),
                          Padding(
                            padding:EdgeInsets.only(top:3.0),
                            child:Container(
                              height:3.0,
                              width:10.0,
                              color:(_index == 0)?Colors.black:Colors.white,),),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 1;
                        _pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Text("Item Bag",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: (_index == 1)?Colors.black:Colors.grey),),
                          Padding(
                            padding:EdgeInsets.only(top:3.0),
                            child:Container(
                              height:3.0,
                              width:10.0,
                              color:(_index == 1)?Colors.black:Colors.white,),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                children: [itembag_tool(), itembag_itembag()],
              ),
            ),
            // RawMaterialButton(onPressed: null)
            // Padding(
            //   padding: const EdgeInsets.only(bottom:8.0),
            //   child: FlatButton(
            //     onPressed: null,
            //     minWidth: 200,
            //     height: 45,
            //     color: coolBlue,
            //     child: (_index==0)?Row(
            //       children: [
            //         Icon(Icons.ac_unit,color: coolBlue,),
            //         Text("Post"),
            //       ],
            //     ):Text("Go to Bar"),
            //     // color: coolBlue,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20.0),
            //       side: BorderSide(color: coolBlue),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
