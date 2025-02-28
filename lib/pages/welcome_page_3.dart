import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage3 extends StatefulWidget {
  const WelcomePage3({super.key});

  @override
  State<WelcomePage3> createState() => _WelcomePage3State();
}

class _WelcomePage3State extends State<WelcomePage3> {
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
                  "Siap untuk pesan",
                  style: GoogleFonts.nunitoSans(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(112, 92, 233, 1),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "makanan?",
                  style: GoogleFonts.nunitoSans(
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
              "assets/images/welcome_3.png",
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
                Navigator.pushReplacementNamed(context, '/make_a_choice');
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
                    style: GoogleFonts.nunitoSans(
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
