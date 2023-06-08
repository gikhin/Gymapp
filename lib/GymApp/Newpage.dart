import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/GymApp/Bottomtwo.dart';
import 'package:untitled10/GymApp/Homepagetwo.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.greenAccent,title: Text('Choose Your Own Exercise'),),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Choose Your Plan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Navitwo()),
                );
              },
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Center(
                    child: Text('Premium',style: TextStyle(fontWeight: FontWeight.bold),))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navitwo()),
                    );
                  },
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Center(child: Text('Gold',style: TextStyle(fontWeight: FontWeight.bold),))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navitwo()),
                    );
                  },
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Center(child: Text('Platinum',style: TextStyle(fontWeight: FontWeight.bold),))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
