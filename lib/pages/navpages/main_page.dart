import 'package:cavosh_app/misc/color.dart';
import 'package:cavosh_app/pages/navpages/cart.dart';
import 'package:cavosh_app/pages/navpages/favorite.dart';
import 'package:cavosh_app/pages/navpages/home.dart';
import 'package:cavosh_app/pages/navpages/menu.dart';
import 'package:cavosh_app/pages/navpages/profile.dart';
import 'package:flutter/material.dart';

class MainNavPage extends StatefulWidget {
  const MainNavPage({super.key});

  @override
  State<MainNavPage> createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  int _currentIndex = 0;
  List navBar = const [
    AppHome(),
    AppMenu(),
    AppFavorites(),
    AppProfile(),
    AppCart(),
  ];

  void _nextIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBar[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: AppColors.buttonTwo),
        selectedItemColor: AppColors.buttonTwo,
        unselectedIconTheme: const IconThemeData(color: AppColors.txtInput),
        unselectedItemColor: AppColors.txtInput,
        type: BottomNavigationBarType.fixed,
        onTap: _nextIndex,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Menu"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
