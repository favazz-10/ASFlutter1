import 'package:flutter/material.dart';

class ListviewBuilder extends StatelessWidget {
  var datas = <String>['a1', 'a2', 'a3','a4','a5','a6','a7','a8'];
  // var colors = <int>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Movies',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (BuildContext cntx, int index) {
            return SizedBox(
              height: 80,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // height: 50,

                // color: Colors.pinkAccent[colors[index]],
                child: Center(
                  child: Text(datas[index],textAlign: TextAlign.left,),
                ),
              ),
            );
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListviewBuilder(),
  ));
}
