import 'package:flutter/material.dart';

class bottomnavigation extends StatefulWidget {
  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int selectedindex = 3;

  void onitemtap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigation Bar'),
        centerTitle: true,
      ),
      body: const Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Card(
            color: Colors.teal,
            child: Text(
              'BNB',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.pink,
        currentIndex: selectedindex,
        onTap: onitemtap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), label: 'Reels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: bottomnavigation(),
  ));
}
