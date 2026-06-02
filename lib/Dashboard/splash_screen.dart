import 'dart:async';

import 'package:bagasputra/Dashboard/peran_page.dart';
import 'package:bagasputra/bagas_login/bagas1.dart';
import 'package:bagasputra/bagas_login/home_page/bagas_home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer t;
  void initState() {
    t = Timer.periodic(Duration(seconds: 5), (timer) {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Bagas1()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: Colors.grey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 100),
            Text(
              "Welcome to Kantin sehat",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            Image.asset('assets/image/kantin.jpg'),
          ],
        ),
      ),
    );
  }
}
