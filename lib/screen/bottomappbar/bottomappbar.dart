import 'package:flutter/material.dart';
import 'package:jabardentalcare/screen/edukasi/edukasi_screen.dart';
import 'package:jabardentalcare/screen/homepage/homepage_screen.dart';
import 'package:jabardentalcare/screen/profil/profil_screen.dart';
import 'package:jabardentalcare/screen/shop/shop_screen.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  int indexHalaman = 0;

  List listScreen = [
    const HomepageScreen(),
    const EdukasiScreen(),
    const ShopScreen(),
    const ProfilScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: listScreen.elementAt(indexHalaman),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xFF660066),
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: indexHalaman,
        onTap: (value) {
          setState(() {
            indexHalaman = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "Edukasi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
