import 'package:flutter/material.dart';

class expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile'),
        centerTitle: true,
      ),
      body: const ExpansionTile(
        title: Text('COLOURS'),
        subtitle: Text('Click to expand the tile'),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text('Red'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
            ),
            title: Text('Yellow'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple,
            ),
            title: Text('Purple'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.greenAccent,
            ),
            title: Text('Green'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink,
            ),
            title: Text('Pink'),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: expansiontile(),
  ));
}
