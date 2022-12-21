import 'package:daycareapp/main/order/order_page.dart';
import 'package:daycareapp/main/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'home/home_page.dart';
import 'profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    OrderPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.white, shadowColor: Color(0xFFB788E2)),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: GNav(
              rippleColor: Color(0xFF68B6D9),
              //hoverColor: Colors.yellow,
              gap: 5,
              activeColor: Color(0xFFB788E2),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.white,
              color: Colors.grey,
              tabActiveBorder: Border.all(width: 1),
              style: GnavStyle.google,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Beranda",
                  iconActiveColor: Color(0xFF68B6D9),
                ),
                GButton(
                  icon: Icons.search,
                  text: "Beranda",
                  iconActiveColor: Color(0xFFF3E5AD),
                ),
                GButton(
                  icon: Icons.pause_presentation,
                  text: "Beranda",
                  iconActiveColor: Color(0xFFF899A4),
                ),
                GButton(
                  icon: Icons.people,
                  text: "Beranda",
                  iconActiveColor: Color(0xFFB788E2),
                ),
              ],
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
