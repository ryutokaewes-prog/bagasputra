import 'package:bagasputra/bagas_login/bagas_latest/latest_widget.dart';
import 'package:bagasputra/bagas_login/bannerAll.dart';
import 'package:bagasputra/bagas_login/home_page/detail_kanntin.dart';
import 'package:bagasputra/bagas_login/notivication/notivication_page.dart';
import 'package:bagasputra/bagas_login/seall.dart';
import 'package:flutter/material.dart';

import '../bagas_latest/lates_services.dart';

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
          Container(
            width: size.width,
            height: 150,
            margin: EdgeInsets.all(20),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
              ),
              itemBuilder: (context, b) => LatestWidget(
                file: bagas[b].file,
                title: bagas[b].title,
                location: bagas[b].location,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Image.asset(
                  "assets/images/kantin_seblak.jpg",
                  height: 75,
                  width: 80,
                ),

                Text("Kantin sekolah"),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailKanntin()),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Lihat",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
