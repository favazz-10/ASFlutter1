import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox',),
        centerTitle: true,
      ),
      body: Center(
        child: Checkbox(activeColor: Colors.yellow,
          checkColor: Colors.red,

          value: ischecked,
          onChanged: (bool? value) {
            setState(() {
              ischecked = value!;
            });
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: checkbox(),
  ));
}
