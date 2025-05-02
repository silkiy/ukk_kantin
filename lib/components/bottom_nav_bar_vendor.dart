import 'package:flutter/material.dart';
import 'package:ukk_kantin_epan/pages/vendor/home_page_vendor.dart';
import 'package:ukk_kantin_epan/pages/vendor/menu_page_vendor.dart';

class BottomNavBarVendor extends StatefulWidget {
  final int selectedItem;
  const BottomNavBarVendor({super.key, required this.selectedItem});

  @override
  State<BottomNavBarVendor> createState() => _BottomNavBarVendorState();
}

class _BottomNavBarVendorState extends State<BottomNavBarVendor> {
  @override
  int _currentIndex = 0;

  void changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePageVendor()),
      );
    } else if (index == 1) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MenuPageVendor()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      backgroundColor: const Color.fromRGBO(243, 244, 248, 1),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_outlined),
          label: 'Menu',
        ),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black26,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNavBar,
    );
  }
}