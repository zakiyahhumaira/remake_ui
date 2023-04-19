import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_app/screens/Register_Widget2.dart';
import 'package:tugas_app/screens/Login_Screen.dart';
import 'package:tugas_app/screens/Profile_Screen.dart';
import 'package:tugas_app/screens/Recovery_Screen.dart';
import 'package:tugas_app/screens/Register_Screen.dart';
import 'package:tugas_app/screens/Register_Screen2.dart';
import 'package:tugas_app/screens/Splash_Screen.dart';
import 'package:tugas_app/screens/Welcome_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Remake Vokasi',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'Login': (context) => LoginScreen(),
        'Register': (context) => Register_Screen(),
        'Data Diri': (context) => Register_Screen2(),
        'Profile': (context) => Profile_Screen(),
        'Recovery': (context) => RecoveryScreen()
      },
    );
  }
}
