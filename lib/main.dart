import 'package:flutter/material.dart';
import 'package:untitled10/Abc.dart';
import 'package:untitled10/GymApp/Homepage.dart';
import 'package:untitled10/GymApp/Loginpage.dart';
import 'package:untitled10/GymApp/Workout.dart';
import 'package:untitled10/New.dart';

import 'GymApp/Splachscreen.dart';
import 'GymApp/Workoutdetails.dart';
import 'The.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}


