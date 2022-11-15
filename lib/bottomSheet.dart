import 'package:flutter/material.dart';

class bottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bottom Sheet'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bs(context);
          },
          child: Icon(Icons.add),
        ));
  }
}

  void bs(BuildContext xy) {
    showModalBottomSheet(
        context: xy,
        builder: (xy) {
          return Container(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 15.0,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(xy).viewInsets.bottom + 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TextField(
                    decoration: InputDecoration(label: Text('name')),
                  ),
                  TextField(keyboardType: TextInputType.number,
                    decoration: InputDecoration(label: Text('number')),
                  ),
                ],
              ),
            ),
          );
        });
  }


void main() {
  runApp(MaterialApp(
    home: bottomsheet(),
  ));
}
