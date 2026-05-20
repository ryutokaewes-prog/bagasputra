import 'dart:async';
import 'package:bagasputra/bagas_login/bagas5.dart';
import 'package:bagasputra/bagas_login/bagas_home_page.dart';
import 'package:flutter/material.dart';

class Bagas4 extends StatefulWidget {
  const Bagas4({super.key});

  @override
  State<Bagas4> createState() => _Bagas4State();
}

class _Bagas4State extends State<Bagas4> {
  late Timer t;

  @override
  void iniState() {
    t = Timer.periodic(
      const Duration(seconds: 15),
      (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BagasHomePage()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    t.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo_google.jpg"),
          Text(
            "Verifying it’s you...",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bagas5()),
            ),
            icon: Icon(Icons.navigate_next, size: 50),
          ),
        ],
      ),
    );
  }
}
