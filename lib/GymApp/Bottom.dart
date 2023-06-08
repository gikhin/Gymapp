import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/GymApp/Graph.dart';
import 'package:untitled10/GymApp/Homepage.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentindex=0;
  final pages=[
    Home(),
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
