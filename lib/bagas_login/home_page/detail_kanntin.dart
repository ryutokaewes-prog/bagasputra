import 'package:bagasputra/Pages/putra_menu.dart';
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
      appBar: AppBar(
        title: Text("Detail kantin"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/kantin_sekolah.jpg",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 5),
              Text(
                "Kantin sekolah",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              SizedBox(height: 10),
              Text(
                "Description",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              SizedBox(height: 10),
              Text(
                "Kantin seblak biasanya sederhana,\n "
                    "bisa berupa warung kecil,\n"
                    " gerobak kaki lima, \n"
                    "atau stand di area sekolah/kampus.\n "
                    "Suasananya ramai,\n "
                    "apalagi saat jam istirahat atau sore hari.\n "
                    "Aroma khas bumbu kencur dan cabai langsung terasa begitu mendekat.\n",
                style: TextStyle(color: Colors.blueGrey),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 700,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PutraMenu()),
                      ),
                      child: Text("Menu Kantin"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}