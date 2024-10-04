import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee/Tea.dart';
import 'package:flutter/cupertino.dart';

class database{
  get price => null;

  final _fire=FirebaseFirestore.instance;


  Future addHotCoffee(Map<String,dynamic> userHotMap,String price)async{
    return await FirebaseFirestore.instance
        .collection("HotCoffee")
        .doc([price].toString())
        .set(userHotMap);
  }

  Future addColdCoffee(Map<String,dynamic> userColdMap,String price)async{
    return await FirebaseFirestore.instance
        .collection("ColdCoffee")
        .doc([price].toString())
        .set(userColdMap);
  }

  // Future<Stream<QuerySnapshot>>getaddColdCoffee() async{
  //   return await FirebaseFirestore.instance.collection("ColdCoffee").snapshots();
  // }

  Future addTea(Map<String,dynamic> userTeaMap, String price)async{
    //var documentSnapshot;
    // int price = documentSnapshot['price'];c
    // String priceStr = price.toString();
    return await FirebaseFirestore.instance
        .collection("Tea")
        .doc([price].toString())
        .set(userTeaMap);
  }

  Future<Stream<QuerySnapshot<Map<String, dynamic>>>>getaddTea() async{
    return await FirebaseFirestore.instance.collection("Tea").snapshots();

  }


  Future<void> deleteItem(String itemId) async {
    await FirebaseFirestore.instance.collection("Tea").doc(itemId).delete().then((_) {
      print("Item deleted successfully!");
    }).catchError((error) {
      print("Failed to delete item: $error");
    });
  }

  // read()async{
  //   try{
  //     final data=await _fire.collection("Tea").get();
  //     final user=data.docs[0];
  //     Text(user["name"]);
  //     Text(user["price"].toString());
  //   }catch(e){
  //
  //     Text  (e.toString());
  //
  //   }
  // }


// Future deleteitem(String price,String userTeaMap)async{
//   return await FirebaseFirestore.instance.collection("Tea").doc(userTeaMap);
//
// }


// getname(name){
//     this.name=name;
// }


// createdata(String? name,String? price){
//
//     print("created");
//
//     DocumentReference documentReference=
//     FirebaseFirestore.instance.collection("name").
//     doc(name);
//
//     //create Map
//     Map<String,dynamic> {
//       "name":name,
//   "price":price,
//
//     };
//
//     documentReference.set(name).whenComplete((){
//       print("$name created");
//   });
// }



  // readdata(String name){
  //
  //   DocumentReference documentReference=FirebaseFirestore.instance.collection("Tea").doc(name);
  //
  //   documentReference.get().then((datasnapshot){
  //     print(datasnapshot.data());
  //
  //   });
  // }


// deletedata(String? name){
//
//     DocumentReference documentReference=FirebaseFirestore.instance.collection("Tea").doc(name);
//
//     documentReference.delete().whenComplete((){
//       print("$name deleted");
//     });
//
// }




  // Future<void> deleteItem(int price) async {
  //   final db = await database;
  //   await db.deleteitem(
  //     'items',
  //     where: 'price = ?',
  //     whereArgs: [price],
  //   );
  //}



  }
