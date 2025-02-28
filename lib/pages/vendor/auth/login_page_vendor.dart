import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_epan/pages/vendor/auth/registrasi_page_vendor.dart';

class LoginPageVendor extends StatefulWidget {
  const LoginPageVendor({super.key});

  @override
  State<LoginPageVendor> createState() => _LoginPageVendorState();
}

class _LoginPageVendorState extends State<LoginPageVendor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).size.width * 0.2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: GoogleFonts.nunitoSans(
                  fontSize: MediaQuery.of(context).size.width * 0.09,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.3),
              Text(
                "Email",
                style: GoogleFonts.nunitoSans(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromRGBO(112, 92, 233, 1),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "Masukan Email Anda",
                    hintStyle: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(154, 154, 154, 1),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Password",
                style: GoogleFonts.nunitoSans(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromRGBO(112, 92, 233, 1),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "Password",
                    hintStyle: GoogleFonts.nunitoSans(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(154, 154, 154, 1),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: const Icon(
                      Icons.lock,
                      color: const Color.fromRGBO(154, 154, 154, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not member?",
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrasiPageVendor(),
                        ),
                      );
                    },
                    child: Text(
                      " Register Now",
                      style: TextStyle(
                        color: Color.fromRGBO(112, 92, 233, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.5),
              GestureDetector(
                onTap: () async {},
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.14,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(112, 92, 233, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
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
    );
  }
}
