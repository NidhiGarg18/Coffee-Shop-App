// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// import 'Tea.dart';
// import 'coldcoffee.dart';
// import 'database.dart';
// import 'homepage.dart';
// import 'hotcoffee.dart';
// import 'payment.dart';
//
// class additem1 extends StatefulWidget {
//   const additem1({super.key});
//
//   @override
//   State<additem1> createState() => _additem1State();
// }
//
// class _additem1State extends State<additem1> {
//
//    //String price = DocumentSnapshot['price'];
//   // String priceStr = price.toString();
//   //late String name;
// //late String id;
//      Stream? items;
//      Stream? items2;
//
//   //static var documentSnapshot;
//
//   //static get documentSnapshot => null;
//
//
//   getonload() async {
//     items = await database().getaddTea();
//
//    // items2 = await database().getaddTea();
//     setState(() {
//
//     });
//   }
//
//      @override
//   void initState() {
//     getonload();
//     super.initState();
//   }
//
//      Widget allitem(){
//        return StreamBuilder(stream: items, builder: (context,AsyncSnapshot snapshot){
//          return snapshot.hasData?
//
//             ListView.builder(
//                itemCount: snapshot.data.docs.length,
//                  itemBuilder:(context,index){
//                    // int price = documentSnapshot['age'];
//                    // String priceStr = price.toString();
//                   // DocumentSnapshot  ds1=snapshot.data.docs[price];
//                  DocumentSnapshot  ds=snapshot.data.docs[index];
//                 // var id=ds.data().containsKey('id')?ds.id:ds.id;
//                  //DocumentSnapshot id = snapshot.data.docs['id'];
//                  //var id = snapshot.id;
//                  //var id = snapshot.data()?['id'] ?? 'defaultId';
//
//                  return Container(
//                    margin: EdgeInsets.only(left: 25,right: 45,top: 20),
//                    child: Material(
//
//                      // child: ListTile(
//                      //   title: Text("name:"+ ds["name"],style: TextStyle(
//                      //             color: Colors.yellow.shade800,
//                      //             fontWeight: FontWeight.bold,
//                      //             fontSize: 35
//                      //           ),),
//                        // subtitle: Text("id:"+ds["id"],style: TextStyle(
//                        //           color: Colors.yellow.shade800,
//                        //           fontWeight: FontWeight.bold,
//                        //           fontSize: 35
//                        //         ),),
//
//                   // child: Padding(
//                   //              padding: const EdgeInsets.only(left: 50),
//                   //              child: GestureDetector(
//                   //                onTap:()async{
//                   //
//                   //                  //ds.collection('Tea').doc(DocumentSnapshot.userTeaMap).delete();
//                   //                  // ScaffoldMessenger.of(context).snapSnackBar(
//                   //                  //   const SnackBar(content: Text("Deleted"),backgroundColor:Colors.black87,)
//                   //                  //);
//                   //                  await database().deleteitem(ds["id"]);
//                   //
//                   //
//                   //                },child: Icon(Icons.delete,color: Colors.yellow.shade800,),
//                   //
//                   //              ),
//                   //            ),
//                     // ),
//                      child: Container(
//                        width: MediaQuery
//                            .of(context)
//                            .size
//                            .width,
//                        decoration: BoxDecoration(
//                            color: Colors.white54,
//                            borderRadius: BorderRadius.circular(10)
//                        ),
//                        child: Column(
//                          children: [
//
//                            Row(
//                              children: [
//                                Text("name:" + ds["name"],
//                                  style: TextStyle(
//                                    color: Colors.yellow.shade900,
//                                    fontWeight: FontWeight.bold,
//                                    fontSize: 30
//                                  ),
//                                ),
//
//
//                                // Text("price:" + ds["price"],
//                                //   style: TextStyle(
//                                //     color: Colors.yellow.shade800,
//                                //   ),
//                                //
//                                // ),
//
//
//                                Padding(
//                                  padding: const EdgeInsets.all(30),
//                                  child: GestureDetector(
//                                    onTap:()async{
//
//                                      //ds.collection('Tea').doc(DocumentSnapshot.userTeaMap).delete();
//                                      // ScaffoldMessenger.of(context).snapSnackBar(
//                                      //   const SnackBar(content: Text("Deleted"),backgroundColor:Colors.black87,)
//                                      //);
//                                      //await database().deleteitem("userTeaMap","name");
//
//                                      await database().deletedata("name");
//
//                                      // Fluttertoast.showToast(
//                                      //     msg: "submit successfully",
//                                      //     toastLength: Toast.LENGTH_SHORT,
//                                      //     gravity: ToastGravity.CENTER,
//                                      //     timeInSecForIosWeb: 1,
//                                      //     backgroundColor: Colors.red,
//                                      //     textColor: Colors.white,
//                                      //     fontSize: 16.0
//                                      // );
//
//
//                                    },child: Icon(Icons.delete,color: Colors.yellow.shade900,),
//
//                                  ),
//                                ),
//
//                                Padding(
//                                  padding: const EdgeInsets.all(5),
//                                  child: GestureDetector(
//                                    onTap:(){
//
//
//
//
//
//
//                                    },child: Icon(Icons.edit,color: Colors.yellow.shade900,),
//
//                                  ),
//                                ),
//                              ],
//                            ),
//
//                            // Text("price:" + ds["price"],
//                            //   style: TextStyle(
//                            //     color: Colors.yellow.shade800,
//                            //   ),
//                            //
//                            // ),
//                          ],
//                        ),
//                     ),
//                    ),
//                  );
//
//              }):Container();
//        });
//      }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//
//         floatingActionButton: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 35,right: 40),
//               child: ElevatedButton(onPressed: (){
//
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=> payment(),));
//
//               }, child: Text("Proceed",
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.yellow.shade900
//                 ),
//               ),),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 120),
//               child: FloatingActionButton(onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage(),));
//               },
//                 backgroundColor: Colors.yellow.shade900,
//                 child:Icon(Icons.add,color: Colors.white,),),
//             ),
//           ],
//         ),
//
//         drawer: Drawer(
//           //iconTheme: IconThemeData(color: Colors.white),
//           backgroundColor: Colors.white,
//           child: ListView(
//             padding: const EdgeInsets.all(10),
//             children: [
//               ListTile(
//                 leading: const Icon(Icons.home),
//                 title: const Text('Home'),
//                 onTap: () {
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homepage(),));
//                 },
//               ),
//               ListTile(
//                 // leading: const Icon(Icons.category),
//                 title: const Text('Hot Coffee'),
//                 onTap: () {
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HotCoffee(),));
//                 },
//               ),
//               ListTile(
//                 //leading: const Icon(Icons.category),
//                 title: const Text(' Cold Coffee '),
//                 onTap: () {
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ColdCoffee(),));
//                 },
//               ),
//               ListTile(
//                 // leading: const Icon(Icons.add),
//                 title: const Text(' Tea '),
//                 onTap: () {
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Tea(),));
//                 },
//               ),
//               ListTile(
//                 // leading: const Icon(Icons.add),
//                 title: const Text(' Add Items '),
//                 onTap: () {
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> additem1(),));
//                 },
//               ),
//               ListTile(
//                 // leading: const Icon(Icons.add),
//                 title: const Text(' Payment '),
//                 onTap: () {
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> payment(),));
//                 },
//               ),
//
//             ],
//           ),
//         ),
//
//
//         appBar: AppBar(
//           backgroundColor: Colors.black87,
//           title: Text("Add Items",style: TextStyle(color: Colors.white),),
//
//         ),
//
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.black87,
//           child: Column(
//             children: [
//               Expanded(
//                   child:allitem(),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// // class additem1 extends StatefulWidget {
// //   const additem1({super.key});
// //
// //   @override
// //   State<additem1> createState() => _additem1State();
// // }
// //
// // class _additem1State extends State<additem1> {
// //
// //   Stream? items;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //
// //         appBar: AppBar(
// //           backgroundColor: Colors.black87,
// //           title: Text("Add Items",style: TextStyle(color: Colors.white),),
// //
// //         ),
// //       body:  StreamBuilder(stream: items.snapshot(),builder: (context,AsyncSnapshot<QuerySnapshot> streamSnapshot){
// //         if(streamSnapshot.hasData){
// //           return ListView.builder(
// //             itemCount: streamSnapshot.data!.docs.length,
// //               itemBuilder: (context,index){
// //               final DocumentSnapshot ds=streamSnapshot.data!.docs[index];
// //               return Material(
// //               child: Container(
// //                        width: MediaQuery
// //                            .of(context)
// //                            .size
// //                            .width,
// //                        decoration: BoxDecoration(
// //                            color: Colors.white,
// //                            borderRadius: BorderRadius.circular(10)),
// //
// //
// //
// //                 child: ListTile(
// //                 title: Text("name:"+ ds["name"],style: TextStyle(
// //                                  color: Colors.yellow.shade800,
// //                                  fontWeight: FontWeight.bold,
// //                                  fontSize: 35
// //                                ),),
// //                        subtitle: Text("id:"+ds["id"],style: TextStyle(
// //                                  color: Colors.yellow.shade800,
// //                                  fontWeight: FontWeight.bold,
// //                                  fontSize: 35
// //                                ),
// //                        ),
// //                 ),
// //               ),
// //               );
// //             });
// //         }
// //       },),
// //     );
// //   }
// // }






import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee/Tea.dart';
import 'package:flutter/material.dart';

import 'coldcoffee.dart';
import 'homepage.dart';
import 'hotcoffee.dart';
import 'payment.dart';

class additem1 extends StatefulWidget {
  @override
  _additem1State createState() => _additem1State();
}

class _additem1State extends State<additem1> {
  final CollectionReference itemsCollection =
  FirebaseFirestore.instance.collection('Tea');

  Future<void> createItem(String name, int price) async {
    await itemsCollection.add({
      'name': name,
      'price': price,
    }).then((_) {
      print("Item added successfully!");
    }).catchError((error) {
      print("Failed to add item: $error");
    });
  }

  Future<void> deleteItem(String itemId) async {
    await itemsCollection.doc(itemId).delete().then((_) {
      print("Item deleted successfully!");
    }).catchError((error) {
      print("Failed to delete item: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
        drawer: Drawer(
          //iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homepage(),));
                },
              ),
              ListTile(
                // leading: const Icon(Icons.category),
                title: const Text('Hot Coffee'),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HotCoffee(),));
                },
              ),
              ListTile(
                //leading: const Icon(Icons.category),
                title: const Text(' Cold Coffee '),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ColdCoffee(),));
                },
              ),
              ListTile(
                // leading: const Icon(Icons.add),
                title: const Text(' Tea '),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Tea(),));
                },
              ),
              ListTile(
                // leading: const Icon(Icons.add),
                title: const Text(' Add Items '),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> additem1(),));
                },
              ),
              ListTile(
                // leading: const Icon(Icons.add),
                title: const Text(' Payment '),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> payment(),));
                },
              ),

            ],
          ),
        ),

      appBar: AppBar(


        title: Text('Items List',style: TextStyle(color: Colors.white),),
        backgroundColor:Colors.black54,
      ),
      body:

      StreamBuilder(
        stream: itemsCollection.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final Tea = snapshot.data!.docs;

          return ListView.builder(
            itemCount: Tea.length,
            itemBuilder: (context, index) {
              final item = Tea[index];
              return ListTile(
                title: Text(item['name'],style: TextStyle(color: Colors.white,fontSize: 20),),
                subtitle: Text('price: ${item['price']}',style: TextStyle(color: Colors.yellow.shade900,fontSize: 20),),
                trailing: IconButton(
                  icon: Icon(Icons.delete,color: Colors.yellow.shade900),
                  onPressed: () => deleteItem(item.id),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Row(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: ElevatedButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> payment(),));
            }, child: Text("Procced",style: TextStyle(color: Colors.yellow.shade900,fontWeight: FontWeight.bold,fontSize: 20),)),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: FloatingActionButton(
              backgroundColor: Colors.yellow.shade900,
              onPressed: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homepage(),)),
              child: Icon(Icons.add,color: Colors.white,),

            ),
          ),

        ],
      ),
    );
  }
}




