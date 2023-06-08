import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  bool?ab=false;
  bool?ab1=false;
  bool?ch2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Checkbox(value: ab, onChanged: (c){
            setState(() {
              ab=c;
            });
            }
            ),

          Checkbox(value: ab1, onChanged: (c){
          setState(() {
            ab1=c;
          });
        },
        ),
           CheckboxListTile(
             title: Text('Accept',style: TextStyle(fontSize: 20)),
               tileColor: Colors.green,
               value: ch2, onChanged: (c){
             setState(() {
           ch2=c;
           });
           })


          ],
        ),
      ),

    );
  }
}
