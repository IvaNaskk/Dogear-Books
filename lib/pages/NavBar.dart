import 'package:dogear2/pages/CartPage.dart';
import 'package:dogear2/pages/HomePage.dart';
import 'package:dogear2/pages/LibraryPage.dart';
import 'package:dogear2/pages/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    LibraryPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    String hexColorBC = "#FCF6E1";
    Color bc =
        Color(int.parse(hexColorBC.substring(1), radix: 16) + 0xFF000000);
    Color customColor = Color(int.parse("15616D", radix: 16) + 0xFF000000);
    Color customColorBT = Color(int.parse("FF7D00", radix: 16) + 0xFF000000);
    Color customColorActive =
        Color(int.parse("C3D1C5", radix: 16) + 0xFF000000);
    Color customColorActive2 =
        Color(int.parse("DFE9E1", radix: 16) + 0xFF000000);

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
        children: [
          Container(
            color: _selectedIndex == 3 ? customColorActive : bc,
            width: MediaQuery.of(context).size.width,
            height: 60,
          ),
          Container(
            decoration: BoxDecoration(
              color: customColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45.0),
                topRight: Radius.circular(45.0),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13),
              child: GNav(
                backgroundColor: customColor,
                color: customColorBT,
                activeColor: customColorBT,
                tabBackgroundColor: customColorActive2,
                padding: EdgeInsets.all(19),
                gap: 8,
                selectedIndex: _selectedIndex,
                onTabChange: _navigateBottomBar,
                tabs: [
                  GButton(
                    icon: Icons.home_filled,
                    text: 'Home',
                    iconSize: 30,
                  ),
                  GButton(
                    icon: Icons.bookmark,
                    text: 'Library',
                    iconSize: 30,
                  ),
                  GButton(
                    icon: Icons.shopping_cart,
                    text: 'Cart',
                    iconSize: 30,
                  ),
                  GButton(
                    icon: Icons.person_sharp,
                    text: 'Profile',
                    iconSize: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
