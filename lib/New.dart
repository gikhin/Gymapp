import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  final formKey = GlobalKey<FormState>(); // Added missing GlobalKey<FormState>
  final passwordController = TextEditingController(); // Changed GlobalKey to TextEditingController
  final confirmingPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding( padding: const EdgeInsets.symmetric(
              horizontal: 15.0, vertical: 55.0,
            ),
            child: Form(
              key: formKey, // Added missing formKey here
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(
                      bottom: 25.0, right: 25.0,
                      left: 25.0, top: 12.0,
                    ),
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Username Cannot be Empty";
                        } else if (val.length < 4) {
                          return "Username Must Be At Least 4 Letters Long";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter Your Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                      bottom: 19.0, right: 25.0,
                      left: 25.0, top: 15.0,
                    ),
                    child: TextFormField(controller: passwordController,
                      obscureText: true,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Password Cannot be Empty";
                        } else if (val.length < 8) {
                          return "Password Must Be 8 Letters Long";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Your Password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(22.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(
                      bottom: 19.0,
                      right: 25.0,
                      left: 25.0,
                      top: 15.0,
                    ),
                    child: TextFormField(obscureText: true,
                      controller: confirmingPassword,
                      validator: (val) {
                        if (val != passwordController.value.text) {
                          return "Passwords Do Not Match";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        hintText: "Re-enter Your Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: () {
                      if (formKey.currentState!.validate()) {
                        debugPrint("All Validation Passed");
                      }
                    },
                    child: Text("Submit"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


