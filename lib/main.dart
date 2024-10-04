import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee/add_items.dart';
import 'package:coffee/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'coldcoffee.dart';
import 'firebase_options.dart';
import 'homepage.dart';
import 'login.dart';
import 'scanner.dart';
//import 'hotcoffee.dart';
//import'coldcoffee.dart';
//import 'Tea.dart';



Future <void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await FirebaseAppCheck.instance.activate(
  //   webProvider: ReCaptchaV3Provider('your-recaptcha-site-key'),
  //   androidProvider: AndroidProvider.debug,
  //   //appleProvider: AppleProvider.deviceCheck,
  // );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

   // await FirebaseFirestore.instance.collection('collectionName').add({
   //   'id': 'someId',
   //   'otherField': 'someValue',
   // });


   // QuerySnapshot snapshot=await FirebaseFirestore.instance.collection("users").get();
  // for(var doc in snapshot.docs){
  //   log(snapshot.docs.toString() as num);
  //
  //   //log(doc.data().toString() as num );
  //
  // }

  runApp(const home());
}
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'home',
      //color: Colors.brown.shade900,
      home:StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return home();
          }else{
            return ColdCoffee();
          }
        },
      ),
    );
  }
}
