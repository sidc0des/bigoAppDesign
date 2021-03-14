import 'package:flutter/material.dart';
class beans extends StatefulWidget {
  @override
  _beansState createState() => _beansState();
}

class _beansState extends State<beans> {
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
                    color: Colors.orange[300],
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
                                  'current beans',
                                  style: TextStyle(
                                    color: Colors.grey,
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
                    top: 0,
                    right: 10,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.article_outlined,color: Colors.grey,size: 20,),
                        ),
                        Text("beans records",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 10,
                    child: Row(
                      children: [
                        Chip(
                          label: Text("≈\$0"),
                          backgroundColor: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.help_outline,color: Colors.grey,size: 20,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                      leading: FlutterLogo(),
                      title: Text('exchange diamonds'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 18,),
                    ),
                    ListTile(
                      leading: FlutterLogo(),
                      title: Text('BIGO STORE'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 18,),
                    ),
                    ListTile(
                      leading: FlutterLogo(),
                      title: Text('exchange reward'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 18,),
                    ),
                  ],
                ),
              ),
            ),
            // ListTile(
            //   leading: FlutterLogo(),
            //   title: Text('Google Wallet'),
            //   trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 8.0,top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("set password for exchanging rewards and diamonds",style: TextStyle(fontSize: 16),),
                        SizedBox(
                          height: 12,
                        ),
                        Text('1. After setting password, beans and diamonds can only be exchanged by users who know the password.',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Text('2. If you forget or need to reset your password, please contactus via Feedback on your profile page',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        SizedBox(
                          height: 12,
                        ),
                        Text('What are beans?',style: TextStyle(fontSize: 16),),
                        SizedBox(
                          height: 12,
                        ),
                        Text('1. Beans can be exchanged to diamonds',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Text('2. Beans can be exchanged to rewards',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Exchange rules',style: TextStyle(fontSize: 16),),
                        SizedBox(
                          height: 12,
                        ),
                        Text('1. Exchange rewards starts from 6700 current beans and no more than 1,050,000 current beans for single withdrawal',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Text('2. You can exchange rewards once a week.',style: TextStyle(color: Colors.grey,fontSize: 12),),
                        Text('3. Single withdrawal of more than \$1000 requires approval, which usually takes 25-30 working days.',style: TextStyle(color: Colors.grey,fontSize: 12),),

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
