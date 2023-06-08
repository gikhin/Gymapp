import 'package:flutter/material.dart';
import 'package:untitled10/GymApp/Newpage.dart';
import 'package:untitled10/GymApp/Workout.dart';

import 'Loginpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
      }, icon: Icon(Icons.logout))],
      ),
      drawer: Builder(
        builder: (BuildContext context) {
          return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Profile',
                      style: TextStyle(fontSize: 25, color: Colors.greenAccent,fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_box_rounded,
                    color: Colors.greenAccent,
                  ),
                  title: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Enter Your Name',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(width: 0.5),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Enter Your Gender',labelStyle: TextStyle(fontSize: 13),
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(width: 0.5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Add spacing between the text fields
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: 'Enter Your Age',labelStyle: TextStyle(fontSize: 13),
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(width: 0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ListTile(
                  leading: Icon(
                    Icons.location_on_outlined,
                    color: Colors.greenAccent,
                  ),
                  title: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Enter Your Location',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(width: 0.5),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent), // Change color here
                  ),
                  child: Text('Submit'),
                )

              ],
            ),
          );
        },
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Text(
                'Welcome to GymPro',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Track your workouts, set goals, and stay fit!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            Container(
              height: 45,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent, // Set the background color to red
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => New()),
                  );
                },
                child: Text('Select Your Own Plans'),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Featured Exercises',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Works()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/signup.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListTile(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    title: Center(
                      child: Text(
                        'ABS BEGINNER',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Works()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/full.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListTile(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    title: Center(
                      child: Text(
                        'FULL BODY CHALLENGE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Works()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/signup.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListTile(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    title: Center(
                      child: Text(
                        'Cardiovascular Exercises',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Works()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/full.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListTile(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    title: Center(
                      child: Text(
                        'LOWER BODY CHALLENGE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
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
