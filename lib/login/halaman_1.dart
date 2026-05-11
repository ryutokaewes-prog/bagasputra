import 'package:flutter/material.dart';

import 'halaman2.dart';

class Halaman1 extends StatefulWidget {
  const Halaman1({super.key});

  @override
  State<Halaman1> createState() => _Halaman1State();
}

class _Halaman1State extends State<Halaman1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.transparent,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Sign in to continue",
                  style: TextStyle(fontSize: 22, color: Colors.black87),
                ),

                SizedBox(height: 40),

                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/logo google.jpg",
                            width: 40,
                            height: 40,
                          ),

                          const SizedBox(width: 20),

                          const Expanded(
                            child: Text(
                              "Continue with Google",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: TextStyle(fontSize: 17, color: Colors.blueAccent),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 17,color: Colors.blueGrey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
