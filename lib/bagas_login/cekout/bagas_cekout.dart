import 'package:bagasputra/bagas_login/cekout/cekout_details.dart';
import 'package:flutter/material.dart';

class BagasCekout extends StatefulWidget {
  const BagasCekout({super.key});

  @override
  State<BagasCekout> createState() => _BagasCekoutState();
}

class _BagasCekoutState extends State<BagasCekout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("cekout"), backgroundColor: Colors.green),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CekoutDetails()),
            ),
            icon: Icon(Icons.check_circle, size: 40, color: Colors.green),
          ),
          Text("chekout sukces ful", style: TextStyle(fontSize: 40)),
        ],
      ),
    );
  }
}








