// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:cosmetic_app/eachProduct.dart';
import 'package:flutter/material.dart';

class MyCards extends StatefulWidget {
  @override
  _addedToCardProducts createState() => _addedToCardProducts();
}

class _addedToCardProducts extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: FloatingActionButton(
            elevation: 0.0,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.grey[800],
            ),
            backgroundColor: Colors.transparent,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView.builder(
            itemCount: cardList.length,
            itemBuilder: (BuildContext context, int index) {
              return cardList[index];
            }));
  }
}
