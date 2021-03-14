import 'package:flutter/material.dart';
class itembag_itembag extends StatefulWidget {
  @override
  _itembag_itembagState createState() => _itembag_itembagState();
}

class _itembag_itembagState extends State<itembag_itembag> {
  Widget items(String name,int qty,int rem,IconData p){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(p,size: 40,),
          Text(name+" x"+qty.toString()),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.watch_later_outlined,size: 10,),
              SizedBox(
                width: 5,
              ),
              Text(rem.toString()+" days",style: TextStyle(color: Colors.grey,fontSize: 12),)
            ],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 4,
        // Generate 100 widgets that display their index in the List.
        children: [
            items("Love",1,28,Icons.shopping_bag),
          items("Love",1,28,Icons.shopping_bag),
          items("Love",1,28,Icons.shopping_bag),
          items("Love",1,28,Icons.shopping_bag),
          items("Love",1,28,Icons.shopping_bag),
          items("Love",1,28,Icons.shopping_bag),
          items("Love",1,28,Icons.shopping_bag),
        ],
      ),
    );
  }
}
