import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Tea.dart';
//import 'add_items.dart';
import 'add_items.dart';
import 'coldcoffee.dart';
import 'homepage.dart';
import 'hotcoffee.dart';
class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Payment",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Container(
            width:double.infinity,
            height: double.infinity,
            color: Colors.black87,


            child:Column(
              children: [
                Image.asset("assets/scanner.jpg",),

                SizedBox(height: 40,),
                GestureDetector(
                  onTap:()async{

                    Fluttertoast.showToast(
                        msg: "Order successfully done",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage(),));

                  },child: Text("Done",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.yellow.shade900),),

                ),


              ],
            ),


          ),
        ),
      ),
    );
  }
}
