import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_epan/components/bottom_nav_bar_student.dart';
import 'package:ukk_kantin_epan/components/search_bar.dart';

import '../../components/stand_card.dart';

class HomePageStudent extends StatefulWidget {
  const HomePageStudent({super.key});

  @override
  State<HomePageStudent> createState() => _HomePageStudentState();
}

class _HomePageStudentState extends State<HomePageStudent> {
  final List<Map<String, String>> stands = [
    {"name": "Stand A", "img": "assets/images/kantin.jpeg"},
    {"name": "Stand B", "img": "assets/images/kantin.jpeg"},
    {"name": "Stand C", "img": "assets/images/kantin.jpeg"},
    {"name": "Stand D", "img": "assets/images/kantin.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05,
            horizontal: MediaQuery.of(context).size.width * 0.07,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Epan",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.055,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.bookmark,
                    color: Color.fromRGBO(112, 92, 233, 1),
                    size: 35,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SearchBarComponents(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Text(
                    "Pilih Stan",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: stands.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return StandCard(
                      name: stands[index]["name"]!,
                      img: stands[index]["img"]!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarStudent(selectedItem: 0),
    );
  }
}
