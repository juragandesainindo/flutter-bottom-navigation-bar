import 'package:bottom_navigation_bar/pages/jamaah_page.dart';
import 'package:bottom_navigation_bar/pages/akun_page.dart';
import 'package:bottom_navigation_bar/pages/home_page.dart';
import 'package:bottom_navigation_bar/pages/wilayah_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const WilayahPage(),
    const JamaahPage(),
    const AkunPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_sharp),
            label: 'Wilayah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.usb),
            label: 'Jamaah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
