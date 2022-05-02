// ignore_for_file: prefer_const_constructors

import 'package:cosmetic_app/LogIn.dart';

import 'package:cosmetic_app/productsPage.dart';
import 'package:flutter/material.dart';

import 'imgEditPage.dart';

import 'myCart.dart';

String userName = 'Aida';
String email = emailController.text;
String location = 'L.A';

List addedProduct = [];

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              '$userName',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(emailController.text),
            currentAccountPicture: CircleAvatar(
              child: GestureDetector(
                child: ClipOval(
                  child: Image.asset(
                    'assest/pro.jpg',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => imageEditPage()));
                },
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffcb3a48),
              // image: DecorationImage(
              //     fit: BoxFit.fill,
              //     image: NetworkImage(
              //         'https://maxcdn.icons8.com/app/uploads/2018/08/sunrise-photo.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('My cart'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyCards()));
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LogIn()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}

Container makeBgColor(BuildContext context, double h) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: h,
    color: Color(0xffcb3a48),
  );
}

FloatingActionButton arrow(BuildContext context) {
  return FloatingActionButton(
    elevation: 0.0,
    child: Icon(
      Icons.arrow_back_ios_new_rounded,
      color: Colors.white,
    ),
    backgroundColor: Colors.transparent,
    onPressed: () => Navigator.of(context).pop(),
  );
}

Align displayImg(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: Container(
      height: 120.0,
      width: 115.0,
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(spreadRadius: 2, blurRadius: 20)],
        image: DecorationImage(
          image: AssetImage('assest/pro.jpg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
    ),
  );
}

//TextEditingController emailController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();
TextEditingController locController = TextEditingController();
bool isVisiable = true;
bool validate = false;

class EditProfile extends StatefulWidget {
  @override
  createState() => _Edit();
}

class _Edit extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              makeBgColor(context, 190.0),
              arrow(context),
              displayImg(context),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 120.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => imageEditPage()));
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      )),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 150.0),
                child: Text(
                  '$userName',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 170.0),
                child: Text(
                  locController.text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        labelText: "Full Name",
                        labelStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "$userName"),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "$email",
                      //hintStyle: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ),
                  TextField(
                    obscureText: isVisiable,
                    controller: passController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.grey[800]),
                      suffixIcon: IconButton(
                        icon: Icon(isVisiable
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            isVisiable = !isVisiable;
                          });
                        },
                      ),
                    ),
                  ),
                  TextField(
                    controller: locController,
                    decoration: InputDecoration(
                      labelText: "Location",
                      hintText: "L.A",
                      labelStyle: TextStyle(color: Colors.grey[800]),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text("CANCEL"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[300],
                          onPrimary: Colors.grey[900],
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: Size(100, 40),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          List validationsList = [];
                          emailController.text.isEmpty
                              ? email
                              : email = emailController.text;

                          nameController.text.isEmpty
                              ? userName
                              : userName = nameController.text;

                          // List of boolean values for validation
                          validationsList.add(emailController.text.isEmpty);
                          validationsList.add(nameController.text.isEmpty);
                          validationsList.add(passController.text.isEmpty);
                          validationsList.add(locController.text.isEmpty);

                          // At least one of them has been changed and the other will stay as the original value
                          if (validationsList[0] == false ||
                              validationsList[1] == false ||
                              validationsList[2] == false ||
                              validationsList[3] == false) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage()));
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //     content: Text('Changes have been saved')));

                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('No changes have been made')));
                          }
                        },
                        child: Text("SAVE"),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffcb3a48),
                          onPrimary: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: Size(120, 40),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
