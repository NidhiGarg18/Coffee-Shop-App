//import 'package:coffee/add_items.dart';
import 'package:coffee/add_items.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';
//import 'package:random_string/random_string.dart';
//import 'package:input_quantity/input_quantity.dart';
//import 'package:input_quantity/input_quantity.dart';

import 'Tea.dart';
import 'coldcoffee.dart';
//import 'database.dart';
import 'database.dart';
import 'hotcoffee.dart';
import 'payment.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _counter = 0;
  int _itemCount = 0;

  int _counter2 = 0;
  int _itemCount2 = 0;

  int _counter3 = 0;
  int _itemCount3 = 0;

  int _counter4 = 0;
  int _itemCount4 = 0;

  //int item=0;

  int numberOfPassengers= 0;
  int numberOfPassengers2= 0;
  int numberOfPassengers3= 0;
  int numberOfPassengers4= 0;

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

  //bool isHover=false;
  //var QtyStyle;
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
                "Coffee",
                style: TextStyle(color: Colors.white),
              ),
              // leading: Icon(
              //   Icons.menu,
              //   color: Colors.white,
              // ),
              backgroundColor: Colors.black87,
            ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black87,
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "It's a Great Day for Coffee",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                Container(

                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                 Navigator.push(context,MaterialPageRoute(builder: (context)=> HotCoffee(),));
                              },
                              child: Text(
                                'Hot Coffee',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.yellow.shade900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=> ColdCoffee(),));
                              },
                              child: Text(
                                'Cold Coffee',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.yellow.shade900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=> Tea(),));
                              },
                              child: Text(
                                'Tea',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.yellow.shade900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'Dessert',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.yellow.shade900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  width: 400,
                  height: 280,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 5),
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
                                    "assets/hot_coffee_1.jpg",
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 80),
                                  child: Text(
                                    "Latte",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 90, top: 10),
                                  child: Text(
                                    "\$40",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: () {

                                            openBox();

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
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 190,
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
                                    "assets/cold_coffee_1.jpg",
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: Text(
                                    "Frappe",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 80, top: 10),
                                  child: Text(
                                    "\$60",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: () {

                                            openBox2();

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


                SizedBox(height: 30,),
                Container(
                  width: 400,
                  height: 272,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 5),
                          child: Container(
                            width: 200,
                            height: 272,
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
                                    "assets/cold_coffee_2.jpg",
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    "Cold Coffee",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 100,),
                                  child: Text(
                                    "\$50",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: () {

                                            openBox3();

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
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 190,
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
                                    "assets/hot_coffee_2.jpg",
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    "Hot Coffee",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 80,),
                                  child: Text(
                                    "\$30",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: () {

                                            openBox4();

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
                          "name": "Latte",
                          "price": _counter,
                        };
                        // var id;
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
                                _counter -= 40;
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
                                _counter += 40;
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
                          "name": "Frappe",
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
                                _counter2 -= 60;
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
                                _counter2 += 60;
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
                          "name": "Cold Coffee",
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
                                _counter3 -= 50;
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
                                _counter3 += 50;
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
                          "name": "Hot Coffee",
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
                                _counter4 -= 30;
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
                                _counter4 +=30;
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


}
