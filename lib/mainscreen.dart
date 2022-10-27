import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown,
        title: const Text('MainScreen'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom:20),
                child: Text(
            'Contacts',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
              )),
          ListTile(
            title: const Text('Nihal'),
            subtitle: const Text('7352749572'),
            leading: Image.asset('assets/images/contact.png'),
            trailing: const Icon(Icons.call_rounded,color: Colors.black,)

          ),
          Divider(thickness: 3,color: Colors.black,),
          ListTile(
            title: const Text('Shibili'),
            subtitle: const Text('8552744353'),
            leading: Image.asset('assets/images/contact.png'),
            trailing: const Icon(Icons.call_rounded,color: Colors.black),
          ),
          Divider(thickness: 3,color: Colors.black,),
          ListTile(
            title: const Text('Favaz'),
            subtitle: const Text('9752749572'),
            leading: Image.asset('assets/images/contact.png'),
            trailing: const Icon(Icons.call_rounded,color: Colors.black,),
          ),
          Divider(thickness: 3,color: Colors.black,),
          ListTile(
            title: const Text('Nasib'),
            subtitle: const Text('8052749572'),
            leading: Image.asset('assets/images/contact.png'),
            trailing: const Icon(Icons.call_rounded,color: Colors.black,),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: mainscreen(),
  ));
}
