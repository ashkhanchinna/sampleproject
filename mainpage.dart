import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/more_page.dart';
import 'package:flutter_application_1/pages/search_page.dart';
import 'package:flutter_application_1/pages/profile_pages.dart';

class MianPage extends StatefulWidget {
  const MianPage({Key? key}) : super(key: key);

  @override
  State<MianPage> createState() => _MianPageState();
}

final pages = [
  const HomePage(),
  SearchPage(),
  const CartPage(),
   ProfilePage(),
  const MorePage(),
];

class _MianPageState extends State<MianPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        animationDuration: const Duration(milliseconds: 500),
        selectedIndex: index,
        onItemSelected: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.home),
            title: const Text("home"),
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.search),
            title: const Text("search"),
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.shopping_cart_outlined),
            title: const Text("cart"),
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.person),
            title: const Text("profile"),
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.settings),
            title: const Text("More"),
          ),
        ],
      ),
      body: pages[index],
    );
  }
}
