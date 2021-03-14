import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme.dart';
class custom_image_viewer extends StatefulWidget {
  final String image;
  custom_image_viewer(this.image){
  }
  @override
  _custom_image_viewerState createState() => _custom_image_viewerState();
}

class _custom_image_viewerState extends State<custom_image_viewer> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    // print(widget.image);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(
        padding: EdgeInsets.only(top:40),
        child: Stack(
          children: [
            GestureDetector(onVerticalDragUpdate: (details) {
              // Note: Sensitivity is integer used when you don't want to mess up vertical drag
              if (details.delta.dy > 15) {
                print("right");
              } else if(details.delta.dy < 15){
                print("left");//Left Swipe
              }
            },
            //     onPanUpdate: (details) {
            // if (details.delta.dy > 1) {
            // print("ce");
            // }}
            onTap:(){
              setState(() {
                show=!show;
                // print(show);
              });
              // show=false;
            },child: Align(alignment: Alignment.center,child: Image.asset(widget.image))),
            show?Positioned(
              left:0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.close,color: Colors.white,),
                    Text("1/1",style: TextStyle(fontSize: 18,color: Colors.white),),
                    Icon(Icons.more_horiz_rounded,color: Colors.white,)
                  ],
                ),
              ),
            ):Positioned(left:0,
                top: 0,child: Container(color: Colors.transparent,)),
            show?Positioned(
              left:0,
              bottom: 0,
              child: Container(
                width: size.width,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(widget.image,height: 40,width: 40,),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Text("sone",style: TextStyle(fontSize: 18,color: Colors.white),),
                                  Text("2 days ago",style: TextStyle(fontSize: 15,color: Colors.white),),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FlatButton(onPressed: (){

                              }, padding:EdgeInsets.all(0),materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
                                ,shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                              ),color: coolBlue,child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  Text(
                                    "Follow",
                                    style: TextStyle(fontSize: 15,color: Colors.white),
                                  )
                                ],
                              ),),
                            ],
                          ),
                          Icon(FontAwesomeIcons.hands,color: coolBlue,size: 16,),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:35.0),
                      child: Text("xdcfgvbh",style: TextStyle(fontSize: 15,color: Colors.white),),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.pen,color: Colors.white,size: 16,),
                              SizedBox(
                                width: 6,
                              ),
                              Text("Comment...",style: TextStyle(fontSize: 15,color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.heart,color: Colors.white,size: 16,),
                              SizedBox(
                                width: 6,
                              ),
                              Text("158",style: TextStyle(fontSize: 15,color: Colors.white),),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(FontAwesomeIcons.comment,color: Colors.white,size: 16,),
                              SizedBox(
                                width: 6,
                              ),
                              Text("17",style: TextStyle(fontSize: 15,color: Colors.white),),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(FontAwesomeIcons.share,color: Colors.white,size: 16,),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ):Positioned(left:0,
        top: 0,child: Container(color: Colors.transparent,)),
          ],
        ),
      ),
    );
  }
}
