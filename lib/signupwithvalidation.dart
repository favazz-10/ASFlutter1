import 'package:flutter/material.dart';
import 'package:project2/loginwithvalidation.dart';

import 'mainscreen.dart';

class signupwithvalidation extends StatefulWidget {
  @override
  State<signupwithvalidation> createState() => _signupwithvalidationState();
}

class _signupwithvalidationState extends State<signupwithvalidation> {
  var formkey = GlobalKey<FormState>();

  bool variable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Signup with validation'),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'SignUp Page',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.deepPurpleAccent,
                    ),
                    label: Text('Email'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurpleAccent),
                        borderRadius: BorderRadius.circular(50))),
                validator: (email) {
                  if (email!.isEmpty || !email.contains('@')) {
                    return 'enter valid email address';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 8) {
                      return 'enter suitable password';
                    } else {
                      return null;
                    }
                  },
                  obscureText: variable,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.deepPurpleAccent,
                      ),
                      label: Text('Password'),
                      suffixIcon: IconButton(
                        icon: variable
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            variable ? variable = false : variable = true;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurpleAccent),
                          borderRadius: BorderRadius.circular(50)))),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                  validator: (conpass) {
                    if (conpass!.isEmpty || conpass.length < 6) {
                      return 'password does not mach';
                    } else {
                      return null;
                    }
                  },
                  obscureText: variable,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.deepPurpleAccent,
                      ),
                      label: Text('Confirm Password'),
                      suffixIcon: IconButton(
                        icon: variable
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            variable ? variable = false : variable = true;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurpleAccent),
                          borderRadius: BorderRadius.circular(50)))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60, top: 33),
              child: SizedBox(
                width: 20,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mainscreen()));
                  } else {
                    print('login failure');
                  }},
                  child: Text('SignUp'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => loginwithvalidation()));
                },
                child: const Text('Already have an acccount?LogIn',style: TextStyle(color: Colors.deepPurpleAccent),))
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: signupwithvalidation(),
  ));
}
