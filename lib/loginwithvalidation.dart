import 'package:flutter/material.dart';
import 'package:project2/mainscreen.dart';
import 'package:project2/signupwithvalidation.dart';

class loginwithvalidation extends StatefulWidget {
  @override
  State<loginwithvalidation> createState() => _loginwithvalidationState();
}

class _loginwithvalidationState extends State<loginwithvalidation> {
  bool variable = true;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: const Text('Login with validation'),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'LogIn Page',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 40),
              child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.pink,
                      ),
                      label: Text('Email'),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen,width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(50)))),
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@')) {
                      return 'enter valid email address';
                    } else {
                      return null;
                    }
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextFormField(
                obscuringCharacter: '*',
                obscureText: variable,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: variable
                          ? const Icon(Icons.remove_red_eye,color: Colors.pink,)
                          : const Icon(Icons.visibility_off,color: Colors.pink,),
                      onPressed: () {
                        setState(() {
                          variable ? variable = false : variable = true;
                        });
                      },
                    ),
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.pink,
                    ),
                    label: const Text('password'),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                validator: (password) {
                  if (password!.isEmpty || password.length < 8) {
                    return 'enter suitable password';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60,top: 33),
              child: SizedBox(
                width: 20,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainscreen()));
                      } else {
                        print('login failure');
                      }
                    },
                    child: const Text(
                      'LogIn',

                    )),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signupwithvalidation()));
                },
                child: const Text(
                  'Not a User?Register Here',
                  style: TextStyle(color: Colors.pink),
                ))
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: loginwithvalidation(),
  ));
}
