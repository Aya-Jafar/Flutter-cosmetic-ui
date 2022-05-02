// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Card card = Card();
List<Card> cardList = [];

bool _isButtonPressed = false;

class eachProduct extends StatefulWidget {
  final String productImg;
  final String productName;
  Color mainColor;
  final String price;
  final String description;

  eachProduct(
      {Key? key,
      required this.productImg,
      required this.productName,
      required this.mainColor,
      required this.description,
      required this.price})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<eachProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: widget.mainColor,
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 240.0,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.productImg),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.transparent, width: 3),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 40.0,
                      height: 30.0,
                      // margin: EdgeInsets.only(left: 20.0),
                      child: RaisedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        color: Colors.transparent,
                        elevation: 0,
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    widget.productName,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(color: Colors.white),
                  ),
                  // SizedBox(
                  //   height: 5.0,
                  // ),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.all(22.0),
                    child: Text(
                      widget.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10.0, color: Colors.white),
                    ),
                  ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 17.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 17.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 17.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 17.0,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                    size: 17.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 35.0,
                  width: 100.0,
                  child: RaisedButton(
                    onPressed: () {
    
                      card = _makeCart(widget.productImg, widget.productName,widget.price);
                      // setState(() {
                      //   _isButtonPressed = !_isButtonPressed;
                      // });
                      // if (_isButtonPressed) {
                      // the first time the button is clicked
                      cardList.add(card);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Product is added to your cart')));
                      // }
                      // else {
                      //   cardList.remove(card);
                      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      //       content: Text('Product is already in your cart')));
                      // }
                    },
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(fontSize: 15.0, color: Colors.grey[900]),
                    ),
                    color: Colors.white,
                    //padding: EdgeInsets.only(bottom: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.grey)),
                  )),
            ],
          )),
    );
  }

  Card _makeCart(String url, String pName,String price) {
    return Card(
      child: ListTile(
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
            url,
          )),
          title: Text(pName),
          subtitle: Text(price)),
    );
  }
}
