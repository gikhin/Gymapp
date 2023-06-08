import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Con.dart';
import 'Loginpage.dart';
import 'Workout.dart';

class Premium extends StatefulWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  Future<dynamic> getData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    var sp = spref.getString("reg_id");
    var data = {'id': sp};
    print(data);
    var response = await post(Uri.parse('${Con.url}Profile.php'), body: data);
    var res = jsonDecode(response.body);
    print(res);
    return res;
  }
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
            child: ListView(children: [
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
              Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: FutureBuilder(
                  future: getData(),
                 builder: (context,snapshot) {
                 if (snapshot.hasData) {
                   return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.tealAccent.withOpacity(0.2),
                          child: Icon(
                            Icons.person,
                            color: Colors.greenAccent,
                          ),
                        ),
                        title: Text(
                          snapshot.data![0]['email'],
                          style: TextStyle(fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text(snapshot.data![0]['password'],
                        ),
                      )
                  );
              }
        );

      }else if(snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(),);
      }
      else{
        return Center(child: Text('No Data'));
      }
    }
                  ),
               ),
            ])
          );
        },
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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

