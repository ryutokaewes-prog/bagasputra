import 'package:flutter/material.dart';

class CekoutDetails extends StatefulWidget {
  const CekoutDetails({super.key});

  @override
  State<CekoutDetails> createState() => _CekoutDetailsState();
}

class _CekoutDetailsState extends State<CekoutDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cekout Details"),backgroundColor: Colors.green,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 370,
                height: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle, color: Colors.green, size: 50),
                    Text("payment Total",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10,),),
                    Text("Rp 67.000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                      Text("Date\n\n Details\n\n Reference num\n\n Total", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),),
                      Text("31-DEC-2023\n\n Residential\n\n 20i49ut429\n\n Rp 67.000", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)]),

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
