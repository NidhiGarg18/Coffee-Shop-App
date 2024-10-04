//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'firebase_function.dart';
import 'homepage.dart';
import 'signup.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _email=TextEditingController();
  TextEditingController _pass=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // void _login() async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("login",style: TextStyle(color: Colors.white),),
          // actions: [
          //   Image(image: AssetImage("assets/login.jpg"),fit: BoxFit.cover,)
          // ],
          backgroundColor: Colors.brown.shade700,
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/login.jpg"), fit: BoxFit.cover),
          ),
       child: Center(
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
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: "Enter Email",
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.email,
                          color: Colors.black87,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.brown.shade800,
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
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(color:Colors.white),
                          icon: Icon(
                            Icons.password,
                            color: Colors.black87,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.black87,
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
                ],
              )
              ),
              SizedBox(height: 20,),
              
              ElevatedButton(onPressed: () async{
                await  AuthServices().signin(email: _email.text, password: _pass.text);
                //createUserWithEmailAndPassword(_email.text,_pass.text);
                if (_formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homepage(),
                      ));

                }
                // else{
                //   UserCredential? credential;
                //
                // try{
                //   credential =await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _pass.text);
                //
                // }
                // on FirebaseAuthException catch(ex){
                //   return signup.null(context,ex.code.toString());
                // }
                // }

              }, child: Text("Login")
              ),
              SizedBox(height: 10,),
              Text("Don't have account? Signin",style:TextStyle(color:Colors.black87),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
               // createUserWithEmailAndPassword(_email.text,_pass.text);
                //if (_formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signup(),
                      ));
                //}
              }, child: Text("Sign in")
              )
            ],
          ),
        )
        ),
      ),
      ),
    );
  }
}
