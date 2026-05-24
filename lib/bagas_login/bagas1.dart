import 'package:bagasputra/bagas_login/bagas2.dart';
import 'package:bagasputra/bagas_login/register.dart';
import 'package:flutter/material.dart';

class Bagas1 extends StatefulWidget {
  const Bagas1({super.key});

  @override
  State<Bagas1> createState() => _Bagas1State();
}

class _Bagas1State extends State<Bagas1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("jbce"),
          Text("jbce"),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bagas2()),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/logo_google.jpg",height: 15,width: 15,),
                  Text("continue with google"),
                ],
              ),
            ),
          ),
          TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),)), child: Text('jsbjcbscs;'))
        ],
      ),
    );
  }
}
