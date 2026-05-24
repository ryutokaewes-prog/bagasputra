import 'package:bagasputra/Seller/putra_akun.dart';
import 'package:bagasputra/Seller/putra_menu.dart';
import 'package:bagasputra/Seller/putra_page1.dart';
import 'package:bagasputra/Seller/putra_model.dart';
import 'package:bagasputra/Seller/putra_pesanan.dart';
import 'package:flutter/material.dart';

class PutraHome extends StatefulWidget {
  const PutraHome({super.key});

  @override
  State<PutraHome> createState() => _PutraHomeState();
}

class _PutraHomeState extends State<PutraHome> {
  int selectedIndex = 0;
  Map<int, PutraModel> page = {
    0: PutraModel(
      page: PutraPage1(),
      label: "Home Page",
      icon: Icons.home_rounded,
      color: Colors.black,
    ),
    1: PutraModel(
      page: PutraPesanan(),
      label: "Pesanan",
      icon: Icons.message,
      color: Colors.black,
    ),
    2: PutraModel(
      page: PutraMenu(),
      label: "Menu",
      icon: Icons.menu_book,
      color: Colors.black,
    ),
    3: PutraModel(
      page: PutraAkun(),
      label: "Account",
      icon: Icons.account_circle,
      color: Colors.black,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: page.entries
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e.value.icon, color: Colors.black),
                label: e.value.label,
                activeIcon: Icon(e.value.icon, color: e.value.color),
                backgroundColor: Colors.green
              ),
            )
            .toList(),
      ),
      body: page[selectedIndex]!.page,
    );
  }
}
