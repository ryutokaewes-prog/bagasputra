import 'package:bagasputra/bagas_login/bannerAll.dart';
import 'package:bagasputra/bagas_login/notivication/notivication_page.dart';
import 'package:bagasputra/bagas_login/seall.dart';
import 'package:flutter/material.dart';

class BagasHomePage extends StatefulWidget {
  const BagasHomePage({super.key});

  @override
  State<BagasHomePage> createState() => _BagasHomePageState();
}

class _BagasHomePageState extends State<BagasHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotivicationPage()),
            ),
            icon: Icon(Icons.notifications),
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 150,
            child: PageView(
              allowImplicitScrolling: true,
              scrollDirection: Axis.horizontal,
              children: [
                Bannerall(image: "assets/images/kantin_sekolah.jpg"),
                Bannerall(image: "assets/images/kantin_seblak.jpg"),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 9, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "list kantin",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Seall()),
                  ),
                  child: Text("See all>"),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}






















