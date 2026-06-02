import 'package:bagasputra/Dashboard/peran_page.dart';
import 'package:bagasputra/bagas_login/home_page/bagas_home_page.dart';
import 'package:flutter/material.dart';

class Bagas5 extends StatefulWidget {
  const Bagas5({super.key});

  @override
  State<Bagas5> createState() => _Bagas5State();
}

class _Bagas5State extends State<Bagas5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.file_download_done),
          SizedBox(height: 20),
          Text("Login successful!"),
          Text("You have been signed in\n successfully."),
          Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PeranPage()),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "Go to Dashboard",
                    style: TextStyle(color: Colors.white, fontSize: 15),
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
