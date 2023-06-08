import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled10/GymApp/Bottom.dart';
import 'package:untitled10/GymApp/Homepage.dart';
import 'package:untitled10/GymApp/Signuppage.dart';
import 'package:untitled10/GymApp/Workout.dart';

import 'Con.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> postData() async {
  var data = {
  'email': email.text,
  'password': password.text,
  };
  var responce = await post(Uri.parse("${Con.url}Login.php"),
      body: data);
  var res = jsonDecode(responce.body);
  print(res);
  if (responce.statusCode == 200) {
  if (res['messages'] == "User successfully logged in") {
  var id = res["reg_id"];
  final spref = await SharedPreferences.getInstance();
  spref.setString("reg_id", id);
  Fluttertoast.showToast(msg: "Successfully logged in");
  Navigator.push(context, MaterialPageRoute(builder: (context) {
  return Home();
  }));
  }
  } else {
  Fluttertoast.showToast(msg: "Failed to log in");
  }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.black,
  body: Container(
  decoration: BoxDecoration(
  image: DecorationImage(
  image: AssetImage('asset/login.jpg'),
  fit: BoxFit.cover,
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
  "LOG IN PAGE",
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
  style: TextStyle(color: Colors.black),
  decoration: InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Your Email',
  labelText: 'Email',
  hintStyle: TextStyle(color: Colors.grey),
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
  style: TextStyle(color: Colors.black),
  decoration: InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Your Password',
  labelText: 'Password',
  hintStyle: TextStyle(color: Colors.grey),
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
  Fluttertoast.showToast(msg: 'User Successfully Loged In');
  Navigator.push(context,
      MaterialPageRoute(builder: (context)=>Navigation()));
  //postData();
  }
  },
  child: Text('Login'),
  ),
  ),
  ),
  TextButton(
  onPressed: () {
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Signup()),
  );
  },
  child: Text(
  "Don't have an account?",
  style: TextStyle(color: Colors.white),
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
