import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_epan/components/bottom_nav_bar_vendor.dart';

import '../../components/kantin_tile.dart';

class HomePageVendor extends StatefulWidget {
  const HomePageVendor({super.key});

  @override
  State<HomePageVendor> createState() => _HomePageVendorState();
}

class _HomePageVendorState extends State<HomePageVendor> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<Map<String, String>> months = [
      {"title": "Jan", "colorBox": "purple", "colorFont": "white"},
      {"title": "Feb", "colorBox": "white", "colorFont": "black"},
      {"title": "Mar", "colorBox": "white", "colorFont": "black"},
      {"title": "Apr", "colorBox": "white", "colorFont": "black"},
      {"title": "May", "colorBox": "white", "colorFont": "black"},
      {"title": "Jun", "colorBox": "white", "colorFont": "black"},
      {"title": "Jul", "colorBox": "white", "colorFont": "black"},
      {"title": "Aug", "colorBox": "white", "colorFont": "black"},
      {"title": "Sep", "colorBox": "white", "colorFont": "black"},
      {"title": "Oct", "colorBox": "white", "colorFont": "black"},
      {"title": "Nov", "colorBox": "white", "colorFont": "black"},
      {"title": "Dec", "colorBox": "white", "colorFont": "black"},
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
            top: size.height * 0.03,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello Epan",
                style: GoogleFonts.nunitoSans(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color(0xff9280FF),
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.03,
          horizontal: size.width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(112, 92, 233, 0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pemasukan bulan ini",
                    style: GoogleFonts.nunitoSans(
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      Text(
                        "Rp 1.000.000",
                        style: GoogleFonts.nunitoSans(
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: size.width * 0.05),
                      Icon(
                        Icons.visibility,
                        color: Color(0xff9280FF),
                        size: size.width * 0.08,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "Daftar transaksi",
              style: GoogleFonts.nunitoSans(
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.08, // beri tinggi agar terlihat
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: months.length,
                separatorBuilder: (context, index) => const SizedBox(width: 4),
                itemBuilder: (context, index) {
                  final month = months[index];
                  return KantinTile(
                    title: month["title"],
                    colorBox: month["colorBox"],
                    colorFont: month["colorFont"],
                  );
                },
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(112, 92, 233, 0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Epan",
                        style: GoogleFonts.nunitoSans(
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "1 Jan 2025",
                            style: GoogleFonts.nunitoSans(
                              fontSize: size.width * 0.03,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: size.width * 0.02),
                          Text(
                            "12:00Am",
                            style: GoogleFonts.nunitoSans(
                              fontSize: size.width * 0.03,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(size.width * 0.015),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff705CE9),
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              "1X",
                              style: TextStyle(
                                color: Color(0xff705CE9),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            "Nasi Goreng",
                            style: TextStyle(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "10.000",
                        style: TextStyle(
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.discount,
                            color: Color(0xff705CE9),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            "Diskon Hari Guru, 50%off",
                            style: TextStyle(
                              fontSize: size.width * 0.03,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            "Rp 10.000",
                            style: TextStyle(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // CardActivity()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarVendor(selectedItem: 0),
    );
  }
}
