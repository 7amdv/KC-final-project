import 'package:flutter/material.dart';
import 'package:morshed/register.dart';
import 'package:morshed/sign_up.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME TO MORSHED",
                style: TextStyle(fontSize: 25),
              ),
              Image.asset(
                "images/myapp.jpeg",
                height: 500,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 45,
                child: FilledButton.tonal(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text("LOGIN"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 300,
                  height: 45,
                  child: FilledButton.tonal(
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.purple[100]),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.black),
                      ))),
            ],
          ),
        ));
  }
}
