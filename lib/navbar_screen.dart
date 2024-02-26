import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {

  int selectedIndex = 0;

  List<Widget> screens=[
    Container(color: Colors.cyan,),
    Container(color: Colors.red,),
    Container(color: Colors.green,),
    Container(color: Colors.blue,),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text('NavBar'),
      ),

      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,

        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical:8),
          child: GNav(
            onTabChange: (value){
              selectedIndex = value;
              setState(() {});
            },
              rippleColor: Colors.grey[300]!, // tab button ripple color when pressed
              hoverColor: Colors.grey[100]!, // tab button hover color
              haptic: true, // haptic feedback
              duration: const Duration(milliseconds: 400), // tab animation duration
              gap: 4, // the tab button gap between icon and text
              color: Colors.white, // unselected icon color
              activeColor: Colors.white, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: Colors.white12, // selected tab background color
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), // navigation bar padding
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.cabin_rounded,
                  text: 'Category',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Card',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Nish',
                )
              ]
          ),
        ),
      ),

    );
  }
}
