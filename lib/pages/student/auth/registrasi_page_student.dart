import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ukk_kantin_epan/pages/student/auth/login_page_student.dart';

import '../home_page_student.dart';

class RegistrasiPageStudent extends StatefulWidget {
  const RegistrasiPageStudent({super.key});

  @override
  State<RegistrasiPageStudent> createState() => _RegistrasiPageStudentState();
}

class _RegistrasiPageStudentState extends State<RegistrasiPageStudent> {
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
                "Register",
                style: GoogleFonts.nunitoSans(
                  fontSize: MediaQuery.of(context).size.width * 0.09,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Text(
                "Nama Lengkap",
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
                    hintText: "Masukan Nama Lengkap Anda",
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
              const SizedBox(height: 15),
              Text(
                "Verifikasi Password",
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
                    hintText: "Verifikasi Password",
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
                    "Already have an account?",
                    style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPageStudent(),
                        ),
                      );
                    },
                    child: Text(
                      " Login Here",
                      style: TextStyle(
                        color: Color.fromRGBO(112, 92, 233, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.3),
              GestureDetector(
                onTap: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageStudent(),
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
                    child: Text(
                      "Registrasi",
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
