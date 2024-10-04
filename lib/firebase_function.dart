//import "dart:developer";

import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:fluttertoast/fluttertoast.dart";

//import "package:flutter/material.dart";
// createUserWithEmailAndPassword(String emailAddress,String pass)async {
//   try {
//     final credential = await FirebaseAuth.instance
//         .createUserWithEmailAndPassword(
//       email: emailAddress,
//       password: pass,
//     );
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'weak-password') {
//       print('The password provided is too weak.');
//     } else if (e.code == 'email-already-in-use') {
//       print('The account already exists for that email.');
//     }
//   } catch (e) {
//     print(e);
//   }
// }


// class AuthService{
//   final _auth=FirebaseAuth.instance;
//   Future<User?> createUserWithEmailAndPassword(
//       String email,String password)async{
//     try{
//       final cred=await _auth.createUserWithEmailAndPassword(email:email,password: password);
//       return cred.user;
//     }catch(e){
//       log("Something went Wrong");
//     }
//     return null;
//   }

// Future<User?> loginWithEmailAndPassword(
//     String email,String password)async{
//   try{
//     final cred=await _auth.signInWithEmailAndPassword(email: email, password: password);
//     return cred.user;
//   }catch(e){
//     log("Something went Wrong");
//   }
//   return null;
// }
//
// Future<void>signout()async{
//   try{
//     await _auth.signOut();
//   }catch(e){
//     log("Something went wrong");
//   }
// }


//}


// class FireAuth {
//   static Future<User?>  registerUsingEmailPassword({
//     required String name,
//     required String email,
//     required String password,
//   }) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;
//     try {
//       UserCredential userCredential = await auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       user = userCredential.user;
//       //await user!.updateProfile(displayName: name);
//       //await user.reload();
//       user = auth.currentUser;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//     return user;
//   }
//
//   static createUserWithEmailAndPassword({required String email, required String password}) {}
// }

class AuthServices {
  Future<void> signup({
    required String email,
    required String password,
    //required String phone,
})async{

    //String res="Some error Occured";
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: password);

    } on FirebaseAuthException catch (e) {

      String message='';
    if (e.code == 'Weak password') {
      message='The password provided is too weak';
     // print('No user found for that email.');
    } else if (e.code == 'email already in use') {
      message='An account already exists with that email';
     // print('Wrong password provided for that user.');

    }
    // else if (e.code=='wrong-phone'){
    //   print('Wrong phone number');
    //
    //   //res="Success";
    //
    // }

      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
  }catch(e){
      //print(e);
    }

    }

  // Future<String> signup({
  //   required String email,
  //   required String pass,
  // }) async {
  //   String res = "some error occured";
  //   try {
  //     if (email.isNotEmpty || pass.isNotEmpty) {
  //       UserCredential credential = await _auth.createUserWithEmailAndPassword(
  //         email: email,
  //         pass: pass,
  //       );
  //
  //       await _firestore.collection("users").doc(credential.user!.uid).set({
  //         'name': name,
  //         "email": email,
  //         'uid': credential.user!.uid,
  //       });
  //       res = "success";
  //     }
  //   catch (e) {
  //     return e.toString();
  //   }
  //   return res;
  // }
  //
  //   Future<String> login({
  //   required String email,
  //   required String pass,
  //   })async{
  //   String res="some error occured";
  //   try{
  //   if(email.isNotEmpty||pass.isNotEmpty){
  //   UserCredential credential = await _auth.signInWithEmailAndPassword(
  //   email:email,
  //   pass:pass,
  //   );
  //
  //   // await _firestore.collection("users").doc(credential.user!.uid).set({
  //   // 'name':name,
  //   // "email":email,
  //   // 'uid':credential.user!.uid,
  //   // });
  //   res="success";
  //   }
  //   else{
  //   res="plese enter all field";
  //   }
  //   }
  //   catch(e){
  //   return e.toString();
  //   }
  //   return res;


   // }



Future<void> signin({
  required String email,
  required String password,
})async{

    String message="";
  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password);

  } on FirebaseAuthException catch (e) {
    if (e.code == 'user not found') {
      message='No user found for that email.';
    } else if (e.code == 'wrong password') {
      message='Wrong password provided for that user.';
      //res="Success";
    }

    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }catch(e){
   // print(e);
  }

}
}




// signInWithEmailAndPassword(String emailAddress,String pass)async{
//   try {
//     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: emailAddress,
//       password: pass,
//     );
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'user-not-found') {
//       print('No user found for that email.');
//     } else if (e.code == 'wrong-password') {
//       print('Wrong password provided for that user.');
//     }
//   // }catch (e) {
//   //   print(e);
//   }
// }
