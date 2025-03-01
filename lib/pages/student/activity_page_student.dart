import 'package:flutter/material.dart';
import 'package:ukk_kantin_epan/components/card_activity.dart';

import '../../components/bottom_nav_bar_student.dart';

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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.07,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Activity",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.075,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff705CE9),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(112, 92, 233, 0.2),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0xff758692),
                        width: 1.5,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xff758692),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Cari stan kamu disini",
                              hintStyle: TextStyle(
                                color: Color(0xff758692),
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Color(0xff758692),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff705CE9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff705CE9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.timer,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            CardActivity(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarStudent(selectedItem: 0),
    );
  }
}
