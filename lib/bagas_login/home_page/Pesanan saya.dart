import 'package:flutter/material.dart';

class Pesanan_saya extends StatefulWidget {
  const Pesanan_saya({super.key});

  @override
  State<Pesanan_saya> createState() => _Pesanan_sayaState();
}

class _Pesanan_sayaState extends State<Pesanan_saya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Pesanan Saya",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                      image: DecorationImage(
                        image: AssetImage("assets/images/kantin_seblak.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "rica-rica kelelawar",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Kantin Cak Bisri",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pesanan_saya()),
                      ),
                      child: Text("Cek", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
