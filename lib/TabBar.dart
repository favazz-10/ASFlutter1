import 'package:flutter/material.dart';

class tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.withOpacity(1),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('settings')),
                const PopupMenuItem(child: Text('version')),
                const PopupMenuItem(child: Text('help')),
                const PopupMenuItem(child: Text('about')),
              ];
            }),
          ],
          title: const Text('Tab'),
          bottom: const TabBar(
              indicatorColor: Colors.green,
              indicatorWeight: 4,
              tabs: [
                Tab(
                  height: 80,
                  icon: Icon(Icons.home),
                  text: 'Home',
                  // iconMargin: EdgeInsets.all(100),
                ),
                Tab(
                  height: 60,
                  icon: Icon(Icons.search),
                  text: 'Search',
                ),
                Tab(
                  height: 60,
                  icon: Icon(Icons.favorite),
                  text: 'Favourites',
                ),
                Tab(
                  height: 60,
                  icon: Icon(Icons.account_circle),
                  text: 'Account',
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.purple,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.green,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.yellow,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: tabbar(),
  ));
}
