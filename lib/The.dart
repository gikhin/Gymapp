import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Example",style: TextStyle(color: Colors.white)),
                  subtitle: Text("ListView",style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.account_box_outlined,color: Colors.white),
                ),

              ],
            ),
            height: 150,
            width: 150,
            color: Colors.green,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.yellow,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.orange,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.green,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.purple,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.yellow,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.orange,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

