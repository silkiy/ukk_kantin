import 'package:flutter/material.dart';
import 'package:ukk_kantin_epan/pages/student/detail_order_page.dart';

class CardActivity extends StatefulWidget {
  const CardActivity({super.key});

  @override
  State<CardActivity> createState() => _CardActivityState();
}

class _CardActivityState extends State<CardActivity> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailOrderPage(),
          ),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.13,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(112, 92, 233, 0.2),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bu Darti",
                    style: TextStyle(
                      color: Color(0xff705CE9),
                      fontSize: MediaQuery.of(context).size.width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  Text(
                    "Total : Rp10.000",
                    style: TextStyle(
                      color: Color(0xff705CE9),
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  Row(
                    children: [
                      Text(
                        "26 Jan 2025 ",
                        style: TextStyle(
                          color: Color(0xff705CE9),
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                      Text(
                        "10:12 AM",
                        style: TextStyle(
                          color: Color(0xff705CE9),
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailOrderPage(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.chevron_right,
                    color: Color(0xff705CE9),
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.04,
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Text(
                    "Dimasak",
                    style: TextStyle(
                      color: Color(0xff705CE9),
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.035,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
