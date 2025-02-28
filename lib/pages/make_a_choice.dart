import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_epan/pages/student/auth/login_page_student.dart';
import 'package:ukk_kantin_epan/pages/vendor/auth/login_page_vendor.dart';

class MakeAChoice extends StatefulWidget {
  const MakeAChoice({super.key});

  @override
  State<MakeAChoice> createState() => _MakeAChoiceState();
}

class _MakeAChoiceState extends State<MakeAChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.height * 0.035,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Siapa kamu?",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.10),
              GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPageStudent(),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(112, 92, 233, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          "Student",
                          style: GoogleFonts.nunitoSans(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
              GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPageVendor(),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
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
                        Icon(
                          Icons.shopping_cart,
                          color: Color.fromRGBO(112, 92, 233, 1),
                        ),
                        Text(
                          "Booth Owner",
                          style: GoogleFonts.nunitoSans(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(112, 92, 233, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Student",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sebagai siswa kamu harus mematuhi peraturan\nyang sudah ditetapkan oleh sekolah tentang\nperaturan yang ada di kantin. Melakukan\npembayaran dengan jujur dan juga menjaga\nkebersihan kantin.",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Booth Owner",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sebagai pemilik stan kamu harus mematuhi\nperaturan yang sudah ditetapkan oleh sekolah\ntentang peraturan yang ada di kantin. Melakukan\npengecekan pengeluaran dengan tepat dan juga\nmenjaga kebersihan kantin.",
                    style: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
