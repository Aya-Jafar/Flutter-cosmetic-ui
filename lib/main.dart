// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'productsPage.dart';

void main() {
  runApp(myApp());
  
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assest/cos.jpg"),
            ),
          ),
        ),
        Container(
          height: 50.0,
          width: 50.0,
          padding: EdgeInsets.all(15.0),
          child: Text(
            "aa.",
            style: TextStyle(
                // fontFamily: "Hind",
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(right: 24.0, top: 35.0),
                  child: Text(
                    "Beauty",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  )),

              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Know the power",
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                ),
              ),
              //SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  "\"Beauty is good for the soul\"",
                  style: TextStyle(fontSize: 8.0, color: Colors.white),
                ),
              ),
              //SizedBox(height: 20.0,),
              Container(
                margin: EdgeInsets.only(top: 20.0, right: 5.0),
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductPage()));
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 13.0, color: Colors.red[800]),
                  ),
                  padding: EdgeInsets.only(bottom: 10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
