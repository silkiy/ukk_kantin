import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_epan/components/bottom_nav_bar_vendor.dart';
import 'package:ukk_kantin_epan/components/menu_card_vendor.dart';

import '../../components/search_bar.dart';

class MenuPageVendor extends StatefulWidget {
  const MenuPageVendor({super.key});

  @override
  State<MenuPageVendor> createState() => _MenuPageVendorState();
}

class _MenuPageVendorState extends State<MenuPageVendor> {
  final List<Map<String, String>> makanan = [
    {
      "name": "Katsu",
      "img": "assets/images/katsu.jpg",
      "desc": "Nasi dengan Chiken Katsu",
    },
    {
      "name": "Katsu",
      "img": "assets/images/katsu.jpg",
      "desc": "Nasi dengan Chiken Katsu",
    },
    {
      "name": "Katsu",
      "img": "assets/images/katsu.jpg",
      "desc": "Nasi dengan Chiken Katsu",
    },
  ];
  final List<Map<String, String>> minuman = [
    {
      "name": "Es Teh",
      "img": "assets/images/esteh.jpg",
      "desc": "Minuman Teh dengan Es",
    },
    {
      "name": "Es Teh",
      "img": "assets/images/esteh.jpg",
      "desc": "Minuman Teh dengan Es",
    },
    {
      "name": "Es Teh",
      "img": "assets/images/esteh.jpg",
      "desc": "Minuman Teh dengan Es",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                "Daftar Menu",
                style: GoogleFonts.nunitoSans(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
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
            SearchBarComponents(
              hintText: "Cari Menu",
              labelText: "Menu",
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "Makanan",
              style: GoogleFonts.nunitoSans(
                fontSize: size.width * 0.045,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: ListView.separated(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: makanan.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return MenuCardVendor(
                    name: makanan[index]["name"]!,
                    img: makanan[index]["img"]!,
                    desc: makanan[index]["desc"]!,
                  );
                },
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "Minuman",
              style: GoogleFonts.nunitoSans(
                fontSize: size.width * 0.045,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: ListView.separated(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: minuman.length,
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return MenuCardVendor(
                    name: minuman[index]["name"]!,
                    img: minuman[index]["img"]!,
                    desc: minuman[index]["desc"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarVendor(selectedItem: 1),
    );
  }
}
