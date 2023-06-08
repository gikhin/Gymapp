import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent,title: Text('Graphs'),),
      backgroundColor: Colors.black,
      body:Container(height: 1000,width: 1000,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('asset/graph.png'),
    ),
    ),
    ),);
  }
}
