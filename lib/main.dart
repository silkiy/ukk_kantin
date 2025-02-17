import 'package:flutter/material.dart';
import 'package:ukk_kantin_epan/pages/student/auth/login_page_student.dart';
import 'package:ukk_kantin_epan/pages/make_a_choice.dart';
import 'package:ukk_kantin_epan/pages/splash_screen.dart';
import 'package:ukk_kantin_epan/pages/student/auth/registrasi_page_student.dart';
import 'package:ukk_kantin_epan/pages/welcome_page_1.dart';
import 'package:ukk_kantin_epan/pages/welcome_page_2.dart';
import 'package:ukk_kantin_epan/pages/welcome_page_3.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        '/splash': (context) => SplashScreen(),
        '/welcome_page_1': (context) => WelcomePage1(),
        '/welcome_page_2': (context) => WelcomePage2(),
        '/welcome_page_3': (context) => WelcomePage3(),
        '/make_a_choice': (context) => MakeAChoice(),
        '/login_page_student': (context) => LoginPageStudent(),
        '/registrasi_page_student': (context) => RegistrasiPageStudent(),
      },
    );
  }
}
