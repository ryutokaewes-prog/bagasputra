import 'package:bagasputra/bagas_login/bagas2.dart';
import 'package:bagasputra/bagas_login/register.dart';
import 'package:flutter/material.dart';

class Bagas1 extends StatefulWidget {
  const Bagas1({super.key});

  @override
  State<Bagas1> createState() => _Bagas1State();
}

class _Bagas1State extends State<Bagas1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome Back!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Text(
            "Sign in to continue",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bagas2()),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/logo_google.jpg",
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "continue with google",
                    style: TextStyle(fontSize: 15, color: Colors.black26),
                  ),
                ],
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "dont have a acount?",
                style: TextStyle(color: Colors.black),
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                ),
                child: Text("Register", style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
