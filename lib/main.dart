//refer recording class(20/10/22)
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project2/home.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1uREKnNiB74Qn-2q_LyBBuAzWjo1JQjaZRw&usqp=CAU'))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Icon(
              ///   Icons.insert_emoticon,
              ///   color: Colors.lightGreen,
              ///   size: 90,
              /// ),
              Image.asset('assets/images/headphone.png',
                  height: 200, width: 200),

              //or
              ///Image(image: AssetImage('assets/images/headphone.png')),
              const Text('MY APP',
                  style: TextStyle(fontSize: 40, color: Colors.greenAccent))
            ],
          ),
        ),
      ),
    );
  }
}
