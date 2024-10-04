//import 'dart:developer';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'firebase_function.dart';
import 'login.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;

  //final _auth = AuthService();
  TextEditingController _email=TextEditingController();
  TextEditingController _pass=TextEditingController();
  //TextEditingController _phone=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // void _signIn() async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: _email.text,
  //       password: _pass.text,
  //     );
  //     print("User signed in: ${userCredential.user?.email}");
  //   } on FirebaseAuthException catch (e) {
  //     print("Error: $e");
  //     if (e.message?.contains('API key not valid') ?? false) {
  //       print("Check your API key and Firebase configuration.");
  //     }
  //     if (e.message?.contains('reCAPTCHA') ?? false) {
  //       print("Check reCAPTCHA setup.");
  //     }
  //   }
  // }

  // void dispose(){
  //   _email.dispose();
  //   _pass.dispose();
  //   _phone.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title: Text("Sign up",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.brown.shade700,
        ),
        body:DecoratedBox(
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/signup.jpg"), fit: BoxFit.cover),
    ),

        child:Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter email';
                              }
                              return null;
                            },
                            controller:_email,
                            decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(color:Colors.white),
                                hintText: "Enter Email",
                                hintStyle: TextStyle(color:Colors.white),
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.black87,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.brown.shade500,
                                    width: 3,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.black87,
                                      width: 3,
                                    ))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter password';
                                }
                                return null;
                              },
                              controller: _pass,
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(color:Colors.white),
                                  hintText: "Enter Password",
                                  hintStyle: TextStyle(color: Colors.white),
                                  icon: Icon(
                                    Icons.password,
                                    color: Colors.black87,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.brown.shade500,
                                        width: 3,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.black87,
                                        width: 3,
                                      )
                                  )
                              )
                          ),
                          // SizedBox(
                          //   height: 20,
                          // ),

                          // TextFormField(
                          //     validator: (value) {
                          //       if (value == null || value.isEmpty) {
                          //         return 'Please enter phone number';
                          //       }
                          //       return null;
                          //     },
                          //     controller: _phone,
                          //     obscureText: true,
                          //     decoration: InputDecoration(
                          //         labelText: "Phone",
                          //         labelStyle: TextStyle(color:Colors.white),
                          //         hintText: "enter Phone number",
                          //         hintStyle: TextStyle(color: Colors.white),
                          //         icon: Icon(
                          //           Icons.phone,
                          //           color: Colors.white,
                          //         ),
                          //         focusedBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(20),
                          //             borderSide: BorderSide(
                          //               color: Colors.brown.shade500,
                          //               width: 3,
                          //             )),
                          //         enabledBorder: OutlineInputBorder(
                          //             borderRadius: BorderRadius.circular(20),
                          //             borderSide: BorderSide(
                          //               color: Colors.black87
                          //               ,
                          //               width: 3,
                          //             )
                          //         )
                          //     )
                          // ),
                        ],
                      )
                  ),
                  SizedBox(height: 20,),

                  ElevatedButton(onPressed: () async{
                 await AuthServices().signup(email: _email.text, password: _pass.text,
                    // phone:_phone.text
                 );
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login(),
                          ));
                    }
                  },
                      child: Text("Sign Up")
                  )
                ],
              ),
            )
        ),
      )
      ),
    );
  }
}

// _signup() async {
//   var _auth;
//   final user=await _auth.createUserWithEmailAndPassword(_email.text,_pass.text);
//   if(user !=null){
//     log("user credited successfully");
//   }
// }
