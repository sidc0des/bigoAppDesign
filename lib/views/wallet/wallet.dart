import 'package:bingo/views/wallet/beans.dart';
import 'package:bingo/views/wallet/coins.dart';
import 'package:bingo/views/wallet/diamonds.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';
class wallet extends StatefulWidget {
  @override
  _walletState createState() => _walletState();
}

class _walletState extends State<wallet> {
  int _index = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title:Text("Wallet",style: TextStyle(color: Colors.black),),

        // automaticallyImplyLeading: true,
        leading:IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
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
                        Text("Diamonds",style: TextStyle(fontWeight: FontWeight.bold,color: (_index == 0)?Colors.black:Colors.grey),),
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
                    child: Column(
                      children: [
                        Text("Beans",style: TextStyle(fontWeight: FontWeight.bold,color: (_index == 1)?Colors.black:Colors.grey),),
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
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 2;
                      _pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Text("Coins",style: TextStyle(fontWeight: FontWeight.bold,color: (_index == 2)?Colors.black:Colors.grey),),
                        Padding(
                          padding:EdgeInsets.only(top:3.0),
                          child:Container(
                            height:3.0,
                            width:10.0,
                            color:(_index == 2)?Colors.black:Colors.white,),),
                      ],
                    ),
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
                children: [diamonds(), beans(), coins()],
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
