// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'SideBar.dart';

class imageEditPage extends StatefulWidget {
  const imageEditPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<imageEditPage> {
  File? choosenImg;
  Future pickImg() async {
    try {
      final choosenImg =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (choosenImg == null) return;
      final imgPath = File(choosenImg.path);
      setState(() {
        this.choosenImg = imgPath;
      });
    } on PlatformException catch (e) {
      print('Failed to upload an image $e');
    }
  }

  Future pickImgCamera() async {
    await ImagePicker().pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            makeBgColor(context, 150.0),
            arrow(context),
            // choosenImg != null
            //     ? Image.file(
            //         choosenImg!,
            //         fit: BoxFit.cover,
            //         height: 160,
            //         width: 160,
            //       )
            //     : FlutterLogo(),
            displayImg(context),
          ],
        ),
        Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(129, 179, 175, 175),
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                )),
            height: MediaQuery.of(context).size.height - 197,
            padding: EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width - 30,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Choose your profile photo",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 54, 51, 51),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(220, 255, 255, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      )),
                  child: FlatButton.icon(
                      onPressed: () => pickImgCamera(),
                      icon: Icon(
                        Icons.camera_alt,
                        size: 30.0,
                      ),
                      label: Text("Camera", style: TextStyle(fontSize: 20.0))),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(220, 255, 255, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      )),
                  child: FlatButton.icon(
                      onPressed: () => pickImg(),
                      icon: Icon(
                        Icons.image,
                        size: 30.0,
                      ),
                      label: Text("Gallary", style: TextStyle(fontSize: 20.0))),
                ),
                SizedBox(height: 20.0),
                CircleAvatar(
                  backgroundColor: Color(0xffcb3a48),
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(Icons.check_rounded, color: Colors.white),
                  ),
                )
              ],
            )),
      ],
    ));
  }
}
