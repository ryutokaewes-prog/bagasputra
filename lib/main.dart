
import 'package:bagasputra/bagas_login/bagas1.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(BagasApp());
}
class BagasApp extends StatefulWidget {
  const BagasApp({super.key});

  @override
  State<BagasApp> createState() => _BagasAppState();
}

class _BagasAppState extends State<BagasApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Bagas1());
  }
}
