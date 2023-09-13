import 'package:flutter/material.dart';
import 'package:morshed/home.dart';
import 'package:morshed/register.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Sign in",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        // SizedBox(
        //   height: 20,
        // ),
        Text(
          "Welcome Back",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Sign in with your email and password",
          style: TextStyle(),
        ),
        Image.asset("images/myapp.jpeg"),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE))
              ]),
          alignment: Alignment.center,
          child: TextField(
            decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: const Color.fromARGB(255, 0, 141, 212),
                ),
                hintText: "Your Email",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE))
              ]),
          alignment: Alignment.center,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: const Color.fromARGB(255, 0, 141, 212),
                ),
                hintText: "Password",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
            width: 300,
            height: 45,
            child: FilledButton.tonal(
                style: FilledButton.styleFrom(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white),
                ))),
        SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an Account?",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              width: 3,
            ),
            InkWell(
              child: Text(
                "Sign Up",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Register(),
                    ))
              },
            )
          ],
        )
      ]),
    );
  }
}
