import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/GymApp/Homepagetwo.dart';

import 'Graph.dart';

class Navitwo extends StatefulWidget {
  const Navitwo({Key? key}) : super(key: key);

  @override
  State<Navitwo> createState() => _NavitwoState();
}

class _NavitwoState extends State<Navitwo> {
  int currentindex=0;
  final pages=[
    Premium(),
    Photo(),
    // Premium(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentindex],
      bottomNavigationBar:
      BottomNavigationBar(backgroundColor: Colors.black,
          currentIndex:currentindex,
          onTap: (nav){
            setState((){currentindex=nav;

            },);
          },
          items: [BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.greenAccent,),
              label: "Home",backgroundColor: Colors.white
          ),
            BottomNavigationBarItem(icon: Icon(Icons.auto_graph,color: Colors.greenAccent,),label: "Graph",backgroundColor: Colors.white),
            //BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet,color: Colors.greenAccent,),label: "YourPlan"),
          ]),


    );
  }
}
