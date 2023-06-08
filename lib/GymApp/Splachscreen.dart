import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/GymApp/Loginpage.dart';
import 'package:untitled10/GymApp/Workout.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Stack(
          children: [
         Center(
          child: Container(
            child: Text('GymPro',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent,fontSize: 37),)
          ),
        ),
      ]),
    );
  }
}
