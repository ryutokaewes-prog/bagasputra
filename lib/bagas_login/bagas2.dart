import 'package:bagasputra/bagas_login/Bagas3.dart';
import 'package:flutter/material.dart';

class Bagas2 extends StatefulWidget {
  const Bagas2({super.key});

  @override
  State<Bagas2> createState() => _Bagas2State();
}

class _Bagas2State extends State<Bagas2> {
  final TextEditingController nameController = TextEditingController();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/logo_google.jpg"),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: Icon(Icons.account_box),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    String name = nameController.text.trim();
                    if (name.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Email wajib diisi"),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bagas3()),
                      );
                    }
                  },
                  child: Text("Next", style: TextStyle(color: Colors.white)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}