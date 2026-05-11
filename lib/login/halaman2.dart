import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Halaman2 extends StatefulWidget {
  const Halaman2({super.key});

  @override
  State<Halaman2> createState() => _RegisterState();
}

class _RegisterState extends State<Halaman2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 70),

              // Google Logo
              Center(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/512px-Google_%22G%22_Logo.svg.png',
                  width: 70,
                  height: 70,
                ),
              ),

              const SizedBox(height: 25),

              const Center(
                child: Text(
                  "Sign in with Google",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              const Center(
                child: Text(
                  "Use your Google Account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ),

              const SizedBox(height: 70),

              TextField(
                decoration: InputDecoration(
                  hintText: "Email or phone",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Forget email?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Create account",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    height: 58,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}