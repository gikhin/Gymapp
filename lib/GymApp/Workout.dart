import 'package:argon_buttons_flutter_fix/argon_buttons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/GymApp/Workoutdetails.dart';

import 'Newpage.dart';

class Works extends StatefulWidget {
  const Works({Key? key}) : super(key: key);

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent,title: Text('Workouts',style:
      TextStyle(fontWeight: FontWeight.bold)),),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
              leading: Container(height: 50,width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/pushup.gif'),
                  ),
                ),
              ),
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('PUSH-UPS',style: TextStyle(fontWeight: FontWeight.bold),),trailing:
              Row(mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(radius: 35,backgroundColor: Colors.greenAccent.withOpacity(0.2),child:
                  ArgonTimerButton(
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.45,
                    minWidth: MediaQuery.of(context).size.width * 0.30,
                    color: Color(0xFF7866FE),
                    borderRadius: 5.0,
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    loader: (timeLeft) {
                      return Text(
                        "Go | $timeLeft",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                    onTap: (startTimer, btnState) {
                      if (btnState == ButtonState.Idle) {
                        startTimer(30);
                      }
                    },
                  ),),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detials()),
                    );
                  }, icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,)),

                ],
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/pull-up-workout.gif'),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('PULL-UPS',style: TextStyle(fontWeight: FontWeight.bold),),trailing:
              Row(mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(radius: 35,backgroundColor: Colors.greenAccent.withOpacity(0.2),child:
                  ArgonTimerButton(
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.45,
                    minWidth: MediaQuery.of(context).size.width * 0.30,
                    color: Color(0xFF7866FE),
                    borderRadius: 5.0,
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    loader: (timeLeft) {
                      return Text(
                        "Go | $timeLeft",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                    onTap: (startTimer, btnState) {
                      if (btnState == ButtonState.Idle) {
                        startTimer(30);
                      }
                    },
                  ),),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detials()),
                    );
                  }, icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,)),
                ],
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/squats.gif'),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('SQUATS',style: TextStyle(fontWeight: FontWeight.bold),),trailing:
              Row(mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(radius: 35,backgroundColor: Colors.greenAccent.withOpacity(0.2),child:
                  ArgonTimerButton(
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.45,
                    minWidth: MediaQuery.of(context).size.width * 0.30,
                    color: Color(0xFF7866FE),
                    borderRadius: 5.0,
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    loader: (timeLeft) {
                      return Text(
                        "Go | $timeLeft",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                    onTap: (startTimer, btnState) {
                      if (btnState == ButtonState.Idle) {
                        startTimer(30);
                      }
                    },
                  ),),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detials()),
                    );
                  }, icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,)),
                ],
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/climbers.gif'),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('CLIMBERS',style: TextStyle(fontWeight: FontWeight.bold),),trailing:
              Row(mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(radius: 35,backgroundColor: Colors.greenAccent.withOpacity(0.2),child:
                  ArgonTimerButton(
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.45,
                    minWidth: MediaQuery.of(context).size.width * 0.30,
                    color: Color(0xFF7866FE),
                    borderRadius: 5.0,
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    loader: (timeLeft) {
                      return Text(
                        "Go | $timeLeft",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                    onTap: (startTimer, btnState) {
                      if (btnState == ButtonState.Idle) {
                        startTimer(30);
                      }
                    },
                  ),),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detials()),
                    );

                  }, icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,)),
                ],
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/deadlift.gif'),
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('DEADLIFT',style: TextStyle(fontWeight: FontWeight.bold),),trailing:
              Row(mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(radius: 35,backgroundColor: Colors.greenAccent.withOpacity(0.2),child:
                  ArgonTimerButton(
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.45,
                    minWidth: MediaQuery.of(context).size.width * 0.30,
                    color: Color(0xFF7866FE),
                    borderRadius: 5.0,
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    loader: (timeLeft) {
                      return Text(
                        "Go | $timeLeft",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                    onTap: (startTimer, btnState) {
                      if (btnState == ButtonState.Idle) {
                        startTimer(30);
                      }
                    },
                  ),),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detials()),
                    );
                  }, icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,)),
                ],
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Container(height: 50,width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/plank.gif'),
                    ),
                  ),
                ),

                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
                title: Text('Plank',style: TextStyle(fontWeight: FontWeight.bold),),trailing:
              Row(mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(radius: 35,backgroundColor: Colors.greenAccent.withOpacity(0.2),child:
                  ArgonTimerButton(
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.45,
                    minWidth: MediaQuery.of(context).size.width * 0.30,
                    color: Color(0xFF7866FE),
                    borderRadius: 5.0,
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    loader: (timeLeft) {
                      return Text(
                        "Go | $timeLeft",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                    onTap: (startTimer, btnState) {
                      if (btnState == ButtonState.Idle) {
                        startTimer(30);
                      }
                    },
                  ),),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detials()),
                    );
                  }, icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,)),
                ],
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
