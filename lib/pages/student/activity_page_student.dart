import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/bottom_nav_bar_student.dart';
import '../../components/card_activity.dart';

class ActivityPageStudent extends StatefulWidget {
  const ActivityPageStudent({super.key});

  @override
  State<ActivityPageStudent> createState() => _ActivityPageStudentState();
}

class _ActivityPageStudentState extends State<ActivityPageStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        centerTitle: true,
        leading: null,
        automaticallyImplyLeading: false,
        title: Text(
          "Checkout",
          style: GoogleFonts.nunitoSans(
            fontSize: MediaQuery.of(context).size.width * 0.055,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.07,
        ),
        child: Column(
          children: [
            CardActivity(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            GestureDetector(
              onTap: () async {},
              child: Container(
                height: MediaQuery.of(context).size.width * 0.14,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(112, 92, 233, 1),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(158, 158, 158, 1)
                          .withValues(alpha: 0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Complete Order",
                        style: GoogleFonts.nunitoSans(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            GestureDetector(
              onTap: () async {},
              child: Container(
                height: MediaQuery.of(context).size.width * 0.14,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(112, 92, 233, 0.2),
                  border: Border.all(
                    width: 1.5,
                    color: Color.fromRGBO(112, 92, 233, 1),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Print Order",
                        style: GoogleFonts.nunitoSans(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(112, 92, 233, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarStudent(selectedItem: 1),
    );
  }
}
