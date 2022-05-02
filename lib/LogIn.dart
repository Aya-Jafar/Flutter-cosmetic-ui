// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cosmetic_app/productsPage.dart';
import 'package:flutter/material.dart';
import 'SideBar.dart';

TextEditingController emailController = TextEditingController();

class LogIn extends StatefulWidget {
  @override
  _LogIn createState() => _LogIn();
}

class _LogIn extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190.0,
              color: Color(0xffcb3a48),
            ),
            FloatingActionButton(
              elevation: 0.0,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
              backgroundColor: Colors.transparent,
              onPressed: () => Navigator.of(context).pop(),
            ),
            Align(
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
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 145.0),
              child: Text(
                '$userName',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 160.0),
              child: Text(
                locController.text,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "$email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffcb3a48), width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: isVisiable,
                controller: passController,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey[800]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffcb3a48), width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                        isVisiable ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        isVisiable = !isVisiable;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Container(
              width: 130,
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  passController.text.isEmpty &&
                              emailController.text.isEmpty &&
                              validateEmail(emailController.text) == false ||
                          validatePass(passController.text) == false
                      ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                              Text('Please Enter a valid email and password')))
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductPage()));
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffcb3a48),
                  onPrimary: Colors.white,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(120, 40),
                ),
              ))
        ]),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Don\'t have an account yet?",
          style: TextStyle(color: Colors.grey[800]),
        ),
        GestureDetector(
            child: Text("Register now",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontSize: 13.0)),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => regesterPage()));
            })
      ])),
    );
  }

  bool validateEmail(String? e) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (e == null || e.isEmpty || !regex.hasMatch(e)) {
      return false;
    } else {
      return true;
    }
  }

  bool validatePass(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
