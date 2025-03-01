// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:ukk_kantin_epan/pages/student/activity_page_student.dart';

import '../pages/student/home_page_student.dart';

class BottomNavBarStudent extends StatefulWidget {
  final int selectedItem;
  const BottomNavBarStudent({super.key, required this.selectedItem});

  @override
  State<BottomNavBarStudent> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNavBarStudent> {
  int _currentIndex = 0;

  void changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePageStudent()),
      );
    } else if (index == 1) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ActivityPageStudent()),
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
          label: 'Activity',
        ),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black26,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNavBar,
    );
  }
}
