import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_epan/components/bottom_nav_bar_student.dart';

import '../../components/menu_card.dart';

class DetailKantinPage extends StatefulWidget {
  const DetailKantinPage({super.key});

  @override
  State<DetailKantinPage> createState() => _DetailKantinPageState();
}

class _DetailKantinPageState extends State<DetailKantinPage> {
  final List<Map<String, String>> makanan = [
    {
      "name": "Katsu",
      "img": "assets/images/katsu.jpg",
      "price": "Rp. 10.000",
      "desc": "Nasi dengan Chiken Katsu",
    },
    {
      "name": "Katsu11",
      "img": "assets/images/katsu.jpg",
      "price": "Rp. 10.000",
      "desc": "Nasi dengan Chiken Katsu",
    },
    {
      "name": "Katsu12",
      "img": "assets/images/katsu.jpg",
      "price": "Rp. 10.000",
      "desc": "Nasi dengan Chiken Katsu",
    },
  ];
  final List<Map<String, String>> minuman = [
    {
      "name": "Es Teh",
      "img": "assets/images/esteh.jpg",
      "price": "Rp. 3.000",
      "desc": "Minuman Teh dengan Es",
    },
    {
      "name": "Es Teh",
      "img": "assets/images/esteh.jpg",
      "price": "Rp. 3.000",
      "desc": "Minuman Teh dengan Es",
    },
    {
      "name": "Es Teh",
      "img": "assets/images/esteh.jpg",
      "price": "Rp. 3.000",
      "desc": "Minuman Teh dengan Es",
    },
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
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/detail_kantin_banner.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 20,
                    child: Text(
                      "Bu Darti",
                      style: GoogleFonts.nunitoSans(
                        fontSize: MediaQuery.of(context).size.width * 0.09,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                children: [
                  Text(
                    "Makanan",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.045,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: makanan.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return MenuCard(
                      name: makanan[index]["name"]!,
                      img: makanan[index]["img"]!,
                      price: makanan[index]["price"]!,
                      desc: makanan[index]["desc"]!,
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  Text(
                    "Minuman",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.045,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: minuman.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return MenuCard(
                      name: minuman[index]["name"]!,
                      img: minuman[index]["img"]!,
                      price: minuman[index]["price"]!,
                      desc: minuman[index]["desc"]!,
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              GestureDetector(
                onTap: () async {},
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(112, 92, 233, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Beli",
                      style: GoogleFonts.nunitoSans(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
