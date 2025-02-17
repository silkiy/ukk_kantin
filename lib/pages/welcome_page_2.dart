import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key});

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 65,
              left: MediaQuery.of(context).size.width * 0.3,
              right: MediaQuery.of(context).size.width * 0.1,
            ),
            child: Image.asset(
              "assets/images/logo.png",
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: MediaQuery.of(context).size.width * 1.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Buat Istirahatmu",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(112, 92, 233, 1),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "jadi gampang",
                  style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(112, 92, 233, 1),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 1.51,
            ),
            child: Image.asset(
              "assets/images/welcome_2.png",
              width: MediaQuery.of(context).size.width * 0.34,
              height: MediaQuery.of(context).size.width * 0.45,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: MediaQuery.of(context).size.width * 1.8,
            ),
            child: GestureDetector(
              onTap: () async {
                Navigator.pushReplacementNamed(context, '/welcome_page_3');
              },
              child: Container(
                height: MediaQuery.of(context).size.width * 0.14,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(112, 92, 233, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "SELANJUTNYA",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
