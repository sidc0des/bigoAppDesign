import 'package:flutter/material.dart';
class coins extends StatefulWidget {
  @override
  _coinsState createState() => _coinsState();
}

class _coinsState extends State<coins> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.white10,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              color: Colors.white,
              height: 150,
              child:
              Stack(
                children: <Widget>[
                  Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.lightBlueAccent[100],
                    child: Container(
                      height: 150,
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.watch_later_outlined),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '0',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 28
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Current Coins',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 20,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.article_outlined,color: Colors.blue,size: 18,),
                          // tooltip:Text(),
                        ),
                        Text("History",style: TextStyle(color: Colors.blue,fontSize: 16),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left:13.0,right: 8.0,top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("What are coins?",style: TextStyle(fontSize: 16),),
                        SizedBox(
                          height: 12,
                        ),
                        Text('1. Coins can be used to purchase gifts.',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Text('2. Coins can be used to exchange tools.',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Text('3. Coins can be used to attend luckydraw.',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Padding(
                          padding:EdgeInsets.only(top:15.0),
                          child:Container(
                            height:1.0,
                            color:Colors.grey,),),
                        ListTile(
                          leading: Icon(Icons.storefront_rounded),
                          contentPadding: const EdgeInsets.only(left:8),
                          title: Text('Go Shopping'),
                          trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left:13.0,right: 8.0,top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("How to get coins?",style: TextStyle(fontSize: 16),),
                        SizedBox(
                          height: 12,
                        ),
                        Text('1. Coins can be acquired by checking in.',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Text('2. Coins can be acquired by attending activities.',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Padding(
                          padding:EdgeInsets.only(top:15.0),
                          child:Container(
                            height:1.0,
                            color:Colors.grey,),),
                        ListTile(
                          leading: Icon(Icons.bookmark_outline_rounded),
                          contentPadding: const EdgeInsets.only(left:8),
                          title: Text('Go Finishing'),
                          trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
