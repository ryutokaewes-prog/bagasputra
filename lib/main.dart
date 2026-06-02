import 'package:bagasputra/Dashboard/splash_screen.dart';
import 'package:bagasputra/Pages/putra_kantin.dart';
import 'package:bagasputra/Seller/putra_home.dart';
import 'package:bagasputra/bagas_login/home_page/bagas_home_page.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(BagasPutra());
}
class BagasPutra extends StatefulWidget {
  const BagasPutra({super.key});

  @override
  State<BagasPutra> createState() => _BagasPutraState();
}

class _BagasPutraState extends State<BagasPutra> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: SplashScreen(),);
  }
}
