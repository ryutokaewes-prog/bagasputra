import 'package:flutter/material.dart';

class PutraPesanan extends StatefulWidget {
  const PutraPesanan({super.key});

  @override
  State<PutraPesanan> createState() => _PutraPesananState();
}

class _PutraPesananState extends State<PutraPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Pesanan Masuk",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}