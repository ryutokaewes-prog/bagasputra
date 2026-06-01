import 'package:flutter/material.dart';

class DetailKanntin extends StatefulWidget {
  const DetailKanntin({super.key});

  @override
  State<DetailKanntin> createState() => _DetailKanntinState();
}

class _DetailKanntinState extends State<DetailKanntin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("jnswnsix")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("asets/images/kantin_sekolah.jpg"),],
          ),
        ),
      ),
    );
  }
}
