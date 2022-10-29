import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project2/loginwithvalidation.dart';

import 'mainscreen.dart';

class signupwithvalidation extends StatefulWidget {
  @override
  State<signupwithvalidation> createState() => _signupwithvalidationState();
}

class _signupwithvalidationState extends State<signupwithvalidation> {
  var formkey = GlobalKey<FormState>();
  TextEditingController pass=TextEditingController();
  TextEditingController conpass=TextEditingController();

  bool variable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Signup with validation'),
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
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.deepPurpleAccent,
                    ),
                    label: const Text('Email'),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.deepPurpleAccent),
                        borderRadius: BorderRadius.circular(50))),
                validator: (email) {
                  if (email!.isEmpty || !email.contains('@')) {
                    return 'enter valid email address';
                  } else {
                    return null;
                  }
                },textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                  controller: pass,
                  textInputAction: TextInputAction.next,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return 'enter suitable password';
                    } else {
                      return null;
                    }
                  },
                  obscureText: variable,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.deepPurpleAccent,
                      ),
                      label: const Text('Password'),
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
                              const BorderSide(color: Colors.deepPurpleAccent),
                          borderRadius: BorderRadius.circular(50)))),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                  controller: conpass,
                  textInputAction: TextInputAction.done,
                  validator: (confirmpass) {
                    if (confirmpass!.isEmpty || confirmpass.length < 8){ //|| pass!=conpass) {
                      return 'password does not mach';
                    } else {
                      return null;
                    }
                  },
                  obscureText: variable,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.deepPurpleAccent,
                      ),
                      label: const Text('Confirm Password'),
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
                              const BorderSide(color: Colors.deepPurpleAccent),
                          borderRadius: BorderRadius.circular(50)))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60, top: 33),
              child: SizedBox(
                width: 20,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => mainscreen()));
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: const Text('Registration Successfull'),
                      //       action: SnackBarAction(
                      //         label: 'undo',
                      //         onPressed: () {
                      //           // Code to execute.
                      //         },
                      //       ),
                      //     ),
                     // );
                    } else {
                      Fluttertoast.showToast(
                          msg: "signup failed",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          // timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text('SignUp'),
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
                child: const Text(
                  'Already have an acccount?LogIn',
                  style: TextStyle(color: Colors.deepPurpleAccent),
                ))
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
