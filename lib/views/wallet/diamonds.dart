import 'package:flutter/material.dart';
class diamonds extends StatefulWidget {
  @override
  _diamondsState createState() => _diamondsState();
}

class _diamondsState extends State<diamonds> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 150,
            child:
            Stack(
              children: <Widget>[
                Card(
                  color: Colors.white,
                  child: Container(
                    height: 150,
                    width: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Account Balance',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 18,)
                          ],
                        ),
                      ],
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
                        icon: Icon(Icons.watch_later_outlined,color: Colors.grey,size: 20,),
                      ),
                      Text("History",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Google Wallet'),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
