import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:untitled10/GymApp/Loginpage.dart';

import 'Con.dart';
import 'Homepage.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  /*Future<void> postData() async {
    var data = {
      'email': email.text,
      'password': password.text,
    };

    var responce = await post(Uri.parse("${Con.url}Register.php"),
        body: data);
    var res = jsonDecode(responce.body);

    print(res);

    if (res["Add"] == "User successfully Registered") {
      Fluttertoast.showToast(msg: 'User Successfully Registered');
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Login();
      }));
    } else {
      Fluttertoast.showToast(msg: "User Successfully Registered");
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('asset/abss.jpg'),fit: BoxFit.cover
    ),
    ),
    child: Stack(
    children: [
    Center(
    child: SingleChildScrollView(
    child: Container(
    alignment: Alignment.center,
    child: Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 15.0,
    vertical: 55.0,
    ),
    child: Form(
    key: formKey,
    child: Column(
    children: [
    Text(
    "Sign Up PAGE",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25,
    ),
    ),
    Padding(
    padding: EdgeInsets.only(
    bottom: 15.0,
    right: 15.0,
    left: 15.0,
    top: 12.0,
    ),
    child: TextFormField(
    controller: email,
    validator: (val) {
    if (val == null || val.isEmpty) {
    return "Please Enter Your Email";
    } else if (!val.contains('@')) {
    return "Please enter a valid email";
    }
    return null;
    },
    style: TextStyle(
    color: Colors.black,
    ),
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: 'Enter Your Email',
    labelText: 'Email',
    hintStyle: TextStyle(
    color: Colors.grey,
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
    Radius.circular(8),
    ),
    borderSide: BorderSide.none,
    ),
    ),
    ),
    ),
      Padding(
        padding: EdgeInsets.only(
          bottom: 15.0,
          right: 15.0,
          left: 15.0,
          top: 12.0,
        ),
        child: TextFormField(
          controller: password,
          obscureText: true,
          validator: (val) {
            if (val!.isEmpty) {
              return "Password Cannot be Empty";
            } else if (val.length < 8) {
              return "Password must be 8 letters long";
            }
            return null;
          },
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Enter Your Password',
            labelText: 'Password',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: 45,
          width: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent,
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                debugPrint("All Validation Passed");
                Fluttertoast.showToast(msg: 'User Successfully Registered');
                //postData();
              }
            },
            child: Text('Signup'),
          ),
        ),
      ),
    ],
    ),
    ),
    ),
    ),
    ),
    ),
    ],
    ),
        ),
    );
  }
}