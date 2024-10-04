//import 'dart:async';

import 'package:coffee/database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

//import 'add_items.dart';
import 'add_items.dart';
import 'coldcoffee.dart';
import 'homepage.dart';
import 'hotcoffee.dart';
import 'payment.dart';
class Tea extends StatefulWidget {
  const Tea({super.key});

  @override
  State<Tea> createState() => _TeaState();
}

class _TeaState extends State<Tea> {

  final _dbservice=database();


  int _counter = 0;
  int _itemCount = 0;

  int _counter2 = 0;
  int _itemCount2 = 0;

  int _counter3 = 0;
  int _itemCount3 = 0;

  int _counter4 = 0;
  int _itemCount4 = 0;

  int _counter5 = 0;
  int _itemCount5 = 0;


  int _counter6 = 0;
  int _itemCount6 = 0;


  //int _item = 0;
  int numberOfPassengers = 0;
  int numberOfPassengers2 = 0;
  int numberOfPassengers3 = 0;
  int numberOfPassengers4 = 0;
  int numberOfPassengers5 = 0;
  int numberOfPassengers6 = 0;
  int numberOfPassengers7 = 0;
  int numberOfPassengers8 = 0;

  // void _incrementCount() {
  //   setState(() {
  //     _item++;
  //     print("$_item");
  //   });
  // }
  //
  // void _decrementCount() {
  //   setState(() {
  //     if (_item > 0) {
  //       _item--;
  //       print("$_item");
  //     }
  //   });
  // }

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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => homepage(),));
                },
              ),
              ListTile(
                // leading: const Icon(Icons.category),
                title: const Text('Hot Coffee'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HotCoffee(),));
                },
              ),
              ListTile(
                //leading: const Icon(Icons.category),
                title: const Text(' Cold Coffee '),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ColdCoffee(),));
                },
              ),
              ListTile(
                // leading: const Icon(Icons.add),
                title: const Text(' Tea '),
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Tea(),));
                },
              ),

              ListTile(
                // leading: const Icon(Icons.add),
                title: const Text(' Add Item '),
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => additem1(),));
                },
              ),


              ListTile(
                // leading: const Icon(Icons.add),
                title: const Text(' Payment '),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => payment(),));
                },
              ),

            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Tea",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Container( // main Container
            color: Colors.black87,
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container( //1st Container
                    width: 800,
                    height: 270,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,),
                            child: Container(
                              width: 200,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),

                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Image.asset(
                                      "assets/tea_1.jpg",
                                      width: 100,
                                      height: 80,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50,),
                                    child: Text(
                                      "Black Tea",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 100, top: 10),
                                    child: Text(
                                      "\$10",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                              icon: const Icon(Icons.add),
                                              onPressed:
                                                  () {
                                                openBox();

                                              }
                                            //:null,
                                            //enabledColor:Colors.white,
                                            // disabledColor:Colors.yellow.shade900,
                                            // highlightColor: Colors.yellow.shade900,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),


                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10, right: 10,),
                            child: Container(
                              width: 200,
                              height: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),

                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Image.asset(
                                      "assets/tea_2.jpg",
                                      width: 100,
                                      height: 80,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50,),
                                    child: Text(
                                      "Kulhad Tea",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 100, top: 10),
                                    child: Text(
                                      "\$15",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                              icon: const Icon(Icons.add),
                                              onPressed:
                                                  () {
                                                openBox2();

                                              }
                                            //:null,
                                            //enabledColor:Colors.white,
                                            // disabledColor:Colors.yellow.shade900,
                                            // highlightColor: Colors.yellow.shade900,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),


                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container( //2nd container
                    width: 800,
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 200,
                              height: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),

                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Image.asset(
                                      "assets/tea_3.jpg",
                                      width: 100,
                                      height: 80,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50,),
                                    child: Text(
                                      "Green Tea",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 100, top: 10),
                                    child: Text(
                                      "\$25",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                              icon: const Icon(Icons.add),
                                              onPressed:
                                                  () {
                                                openBox3();

                                              }
                                            //:null,
                                            //enabledColor:Colors.white,
                                            // disabledColor:Colors.yellow.shade900,
                                            // highlightColor: Colors.yellow.shade900,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),


                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10, right: 10,),
                            child: Container(
                              width: 200,
                              height: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),


                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Image.asset(
                                      "assets/tea_4.jpg",
                                      width: 100,
                                      height: 80,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    child: Text(
                                      "Herbal Tea",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 100, top: 10),
                                    child: Text(
                                      "\$40",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                              icon: const Icon(Icons.add),
                                              onPressed:
                                                  () {
                                                openBox4();

                                              }
                                            //:null,
                                            //enabledColor:Colors.white,
                                            // disabledColor:Colors.yellow.shade900,
                                            // highlightColor: Colors.yellow.shade900,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container( // 3rd container
                    width: 800,
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 200,
                              height: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),

                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Image.asset(
                                      "assets/tea_5.jpg",
                                      width: 100,
                                      height: 80,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20,),
                                    child: Text(
                                      "Oolong Tea",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 100, top: 10),
                                    child: Text(
                                      "\$30",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                              icon: const Icon(Icons.add),
                                              onPressed:
                                                  () {
                                                openBox5();

                                              }
                                            //:null,
                                            //enabledColor:Colors.white,
                                            // disabledColor:Colors.yellow.shade900,
                                            // highlightColor: Colors.yellow.shade900,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10, right: 10,),
                            child: Container(
                              width: 200,
                              height: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),

                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Image.asset(
                                      "assets/tea_6.jpg",
                                      width: 100,
                                      height: 80,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,),
                                    child: Text(
                                      "Cappuccino",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 100, top: 10),
                                    child: Text(
                                      "\$35",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: () {

                                              openBox6();

                                            },
                                            disabledColor: Colors.white,
                                            highlightColor: Colors.yellow
                                                .shade900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),


          ),


        ),
      ),
    );
  }


  openBox() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[


                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () async {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => additem1(),));
                        String price = randomAlphaNumeric(10);
                        Map<String, dynamic>userTeaMap = {
                          "name": "Black Tea",
                          "price": _counter,
                        };
                       // var id;

                        //_dbservice.read();
                        //database().readdata(name, price);

                       // database().readdata("name");
                        await database().addTea(userTeaMap,price).then((
                            value) {
                          Fluttertoast.showToast(
                              msg: "submit successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        });
                      }, child: Text("Add Items")),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: numberOfPassengers >= 0 ? () {
                              setState(() {
                                _itemCount -= 1;
                                print('Number of Quantity + $_itemCount');
                                _counter -= 10;
                                print('this is counter + $_counter');
                                numberOfPassengers--;
                              });
                            } : null,
                            //enabledColor:Colors.white,
                            disabledColor: Colors.yellow.shade900,
                            highlightColor: Colors.yellow.shade900,
                          ),

                          Text(
                            numberOfPassengers.toString(),
                            style: const TextStyle(
                              fontSize: 15, color: Colors.black,),

                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // maxVal:double.maxFinite;
                              // initVal: 0;
                              setState(() {
                                _itemCount += 1;
                                print('Number of Quantity + $_itemCount');
                                _counter += 10;
                                print('this is counter + $_counter');
                                numberOfPassengers++;
                              });
                            },

                            disabledColor: Colors.white,
                            highlightColor: Colors.yellow.shade900,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                Text('_quantity= + $_itemCount & price= + $_counter'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () async {
                Navigator.of(context).pop();

              },
            ),
          ],
        );
      },
    );
  }

  openBox2() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[


                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () async {
                        // Map<String,dynamic>userTeaMap={
                        // "name":"Black Tea",
                        //};
                        //await database().addTea(userTeaMap, price)
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => additem1(),));
                        String price = randomAlphaNumeric(10);
                        Map<String, dynamic>userTeaMap = {
                          "name": "Kulhad Tea",
                          "price": _counter2,

                        };
                        //var id;
                        await database().addTea(userTeaMap, price).then((
                            value) {
                          Fluttertoast.showToast(
                              msg: "submit successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        });
                      }, child: Text("Add Items")),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: numberOfPassengers2 >= 0 ? () {
                              setState(() {
                                _itemCount2 -= 1;
                                print('Number of Quantity + $_itemCount2');
                                _counter2 -= 15;
                                print('this is counter + $_counter2');
                                numberOfPassengers2--;
                              });
                            } : null,
                            //enabledColor:Colors.white,
                            disabledColor: Colors.yellow.shade900,
                            highlightColor: Colors.yellow.shade900,
                          ),

                          Text(
                            numberOfPassengers2.toString(),
                            style: const TextStyle(
                              fontSize: 15, color: Colors.black,),

                          ),

                          //const SizedBox(width:10),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // maxVal:double.maxFinite;
                              // initVal: 0;
                              setState(() {
                                _itemCount2 += 1;
                                print('Number of Quantity + $_itemCount2');
                                _counter2 += 15;
                                print('this is counter + $_counter2');
                                numberOfPassengers2++;
                              });
                            },

                            disabledColor: Colors.white,
                            highlightColor: Colors.yellow.shade900,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                Text('_quantity= + $_itemCount2 & price= + $_counter2'),

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  openBox3() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[


                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () async {
                        // Map<String,dynamic>userTeaMap={
                        // "name":"Black Tea",
                        //};
                        //await database().addTea(userTeaMap, price)
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => additem1(),));
                        String price = randomAlphaNumeric(10);
                        Map<String, dynamic>userTeaMap = {
                          "name": "Green Tea",
                          "price": _counter3,

                        };
                        //var id;
                        await database().addTea(userTeaMap, price).then((
                            value) {
                          Fluttertoast.showToast(
                              msg: "submit successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        });
                      }, child: Text("Add Items")),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: numberOfPassengers3 >= 0 ? () {
                              setState(() {
                                _itemCount3 -= 1;
                                print('Number of Quantity + $_itemCount3');
                                _counter3 -= 25;
                                print('this is counter + $_counter3');
                                numberOfPassengers3--;
                              });
                            } : null,
                            //enabledColor:Colors.white,
                            disabledColor: Colors.yellow.shade900,
                            highlightColor: Colors.yellow.shade900,
                          ),

                          Text(
                            numberOfPassengers3.toString(),
                            style: const TextStyle(
                              fontSize: 15, color: Colors.black,),

                          ),

                          //const SizedBox(width:10),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // maxVal:double.maxFinite;
                              // initVal: 0;
                              setState(() {
                                _itemCount3 += 1;
                                print('Number of Quantity + $_itemCount3');
                                    _counter3 += 25;
                                    print('this is counter + $_counter3');
                                numberOfPassengers3++;
                              });
                            },

                            disabledColor: Colors.white,
                            highlightColor: Colors.yellow.shade900,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                Text('_quantity= + $_itemCount3 & price= + $_counter3'),

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }




  openBox4() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[


                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () async {
                        // Map<String,dynamic>userTeaMap={
                        // "name":"Black Tea",
                        //};
                        //await database().addTea(userTeaMap, price)
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => additem1(),));
                        String price = randomAlphaNumeric(10);
                        Map<String, dynamic>userTeaMap = {
                          "name": "Herbal Tea",
                          "price": _counter4,

                        };
                        //var id;
                        await database().addTea(userTeaMap, price).then((
                            value) {
                          Fluttertoast.showToast(
                              msg: "submit successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        });
                      }, child: Text("Add Items")),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: numberOfPassengers4 >= 0 ? () {
                              setState(() {
                                _itemCount4 -= 1;
                                print('Number of Quantity + $_itemCount4');
                                _counter4 -= 40;
                                print('this is counter + $_counter4');
                                numberOfPassengers4--;
                              });
                            } : null,
                            //enabledColor:Colors.white,
                            disabledColor: Colors.yellow.shade900,
                            highlightColor: Colors.yellow.shade900,
                          ),

                          Text(
                            numberOfPassengers4.toString(),
                            style: const TextStyle(
                              fontSize: 15, color: Colors.black,),

                          ),

                          //const SizedBox(width:10),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // maxVal:double.maxFinite;
                              // initVal: 0;
                              setState(() {
                                _itemCount4 += 1;
                                print('Number of Quantity + $_itemCount4');
                                    _counter4 +=40;
                                    print('this is counter + $_counter4');
                                numberOfPassengers4++;
                              });
                            },

                            disabledColor: Colors.white,
                            highlightColor: Colors.yellow.shade900,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                Text('_quantity= + $_itemCount4 & price= + $_counter4'),

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }




  openBox5() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[


                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () async {
                        // Map<String,dynamic>userTeaMap={
                        // "name":"Black Tea",
                        //};
                        //await database().addTea(userTeaMap, price)
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => additem1(),));
                        String price = randomAlphaNumeric(10);
                        Map<String, dynamic>userTeaMap = {
                          "name": "Oolong Tea",
                          "price": _counter5,

                        };
                        //var id;
                        await database().addTea(userTeaMap, price).then((
                            value) {
                          Fluttertoast.showToast(
                              msg: "submit successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        });
                      }, child: Text("Add Items")),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: numberOfPassengers5 >= 0 ? () {
                              setState(() {
                                _itemCount5 -= 1;
                                print('Number of Quantity + $_itemCount5');
                                _counter5 -= 30;
                                print('this is counter + $_counter5');
                                numberOfPassengers5--;
                              });
                            } : null,
                            //enabledColor:Colors.white,
                            disabledColor: Colors.yellow.shade900,
                            highlightColor: Colors.yellow.shade900,
                          ),

                          Text(
                            numberOfPassengers5.toString(),
                            style: const TextStyle(
                              fontSize: 15, color: Colors.black,),

                          ),

                          //const SizedBox(width:10),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // maxVal:double.maxFinite;
                              // initVal: 0;
                              setState(() {
                                _itemCount5 += 1;
                                print('Number of Quantity + $_itemCount5');
                                _counter5 += 30;
                                print('this is counter + $_counter5');
                                numberOfPassengers5++;
                              });
                            },

                            disabledColor: Colors.white,
                            highlightColor: Colors.yellow.shade900,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                Text('_quantity= + $_itemCount5 & price= + $_counter5'),

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }




  openBox6() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[


                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () async {
                        // Map<String,dynamic>userTeaMap={
                        // "name":"Black Tea",
                        //};
                        //await database().addTea(userTeaMap, price)





                        //String price=randomAlphaNumeric(10);
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => additem1(),));
                        String price = randomAlphaNumeric(10);
                        Map<String, dynamic>userTeaMap = {
                          "name": "Cappucino",
                          "price": _counter6,

                        };
                        //var id;
                        await database().addTea(userTeaMap, price).then((
                            value) {
                          Fluttertoast.showToast(
                              msg: "submit successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        });
                      }, child: Text("Add Items")),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: numberOfPassengers6 >= 0 ? () {
                              setState(() {
                                _itemCount6 -= 1;
                                print('Number of Quantity + $_itemCount6');
                                _counter6 -= 35;
                                print('this is counter + $_counter6');
                                numberOfPassengers6--;
                              });
                            } : null,
                            //enabledColor:Colors.white,
                            disabledColor: Colors.yellow.shade900,
                            highlightColor: Colors.yellow.shade900,
                          ),

                          Text(
                            numberOfPassengers6.toString(),
                            style: const TextStyle(
                              fontSize: 15, color: Colors.black,),

                          ),

                          //const SizedBox(width:10),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              // maxVal:double.maxFinite;
                              // initVal: 0;
                              setState(() {
                                _itemCount6 += 1;
                                print('Number of Quantity + $_itemCount6');
                                _counter6 += 35;
                                print('this is counter + $_counter6');
                                numberOfPassengers6++;
                              });
                            },

                            disabledColor: Colors.white,
                            highlightColor: Colors.yellow.shade900,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                Text('_quantity= + $_itemCount6 & price= + $_counter6'),

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}