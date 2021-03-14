import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:bingo/widgets/containers.dart';

class bar_pictures extends StatefulWidget {
  @override
  _bar_picturesState createState() => _bar_picturesState();
}

class _bar_picturesState extends State<bar_pictures> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => new Container(
        child: bar_pictures_tile(size, context, 'assets/hot.png'),
      ),
      staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
