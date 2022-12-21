import 'package:flutter/material.dart';

class shippingScreen extends StatefulWidget {
  const shippingScreen({Key? key}) : super(key: key);

  @override
  _shippingScreenState createState() => _shippingScreenState();
}

class _shippingScreenState extends State<shippingScreen> {

  var isLoaded = false;

  int index = 0;

  onItemTapped(int widgetindex) {
    setState(() {
      print("old  index ==> $index");
      index = widgetindex;
      print("new  index ==> $index");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                actions: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon:
                        Icon(Icons.search_outlined, color: Colors.black54),
                        labelText: "Enter Inquiry ID",
                        filled: true),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo[100],
                        shape:
                        RoundedRectangleBorder(side: BorderSide(width: 2))),
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Align(
                        alignment: Alignment.center, child: Text('Submit')),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.filter_alt_rounded, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              color: Colors.white,
              child: Text(
                "Inquiries Available",
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Card(
              elevation: 4.0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("INQ00030713"),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0)))),
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Text('WITH RATES')),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.directions_boat_outlined),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("INNSA"),
                          Text("Mumbai"),

                        ],
                      ),
                      Column(
                        children: [
                          Text("DEHAM"),
                          Text("Hamburg"),

                        ],
                      ),

                      Column(
                        children: [
                          Text("SEA-FCL"),
                          Text("20GPX1"),

                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Created On"),
                          Text("24 Nov 2022"),

                        ],
                      ),
                      Column(
                        children: [
                          Text("Created by"),
                          Text("Vipin Agrahari"),

                        ],
                      ),

                      Column(
                        children: [
                          Text("Sales Person"),
                          Text("-"),

                        ],
                      ),
                      Column(
                        children: [
                          Text("Company"),
                          Text("-"),


                        ],
                  ),
              ],
            ),

                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded, color: Colors.black54),
            label: "Instant Rates",
            backgroundColor: Colors.white,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.email_rounded, color: Colors.black54),
            label: "Inquiries",
            backgroundColor: Colors.white,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.directions_boat_filled_outlined,
                color: Colors.black54),
            label: "Shipment",
            backgroundColor: Colors.white38,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.more_vert_rounded, color: Colors.black54),
            label: "more",
            backgroundColor: Colors.white,
          ),
        ],
        selectedItemColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }
}
