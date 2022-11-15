import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class staggeredgridview extends StatelessWidget {
  @override
  List<StaggeredTile> cardtile = [
    StaggeredTile.count(3, 2),
    StaggeredTile.count(3, 1),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(3, 4)
  ];

  final List <Widget> lt = <Widget>[
    backgroundtile(
      iconData: Icons.home,
      backgroundcolor: Colors.brown,
    ),
    backgroundtile(
      iconData: Icons.music_note,
      backgroundcolor: Colors.greenAccent,
    ),
    backgroundtile(
      iconData: Icons.image_outlined,
      backgroundcolor: Colors.purple,
    ),
    backgroundtile(
      iconData: Icons.phone_android_outlined,
      backgroundcolor: Colors.yellow,
    ),
    backgroundtile(
      iconData: Icons.account_circle,
      backgroundcolor: Colors.black,
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggerd GridView'),
        centerTitle: true,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 5,
        staggeredTiles: cardtile,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: lt,

      ),
    );
  }
}

class backgroundtile extends StatelessWidget {
  final Color? backgroundcolor;
  final IconData? iconData;

  backgroundtile({this.backgroundcolor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundcolor,
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: staggeredgridview(),
  ));
}
