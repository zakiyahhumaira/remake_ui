import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_app/screens/Register_Widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Outline = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffEE8301), width: 2),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );
    var styleawal = GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: const Color(0xff484848));
    var styleisi = GoogleFonts.poppins(
        fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff919191));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {
              Navigator.pushNamed(context, '/');
            }),
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff484848),
            )),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/vokasi_logo-fill.png',
                width: 72,
                height: 72,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      Text(
                        'Masuk',
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff484848)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Row(
                    children: [
                      Text(
                        'Alamat Email',
                        style: styleawal,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: Outline,
                      hintStyle: styleisi,
                      hintText: 'Masukan Alamat Email UNPAK',
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text(
                        'Kata Sandi',
                        style: styleawal,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: Outline,
                        hintStyle: styleisi,
                        hintText: 'Masukkan Setidaknya 8 Karakter'),
                  ),
                  SizedBox(
                    height: 51,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Profile');
                    },
                    child: const Text('Masuk'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffEE8301),
                      minimumSize: Size(370.0, 40.0),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                      textStyle: GoogleFonts.poppins(fontSize: 14.0),
                      side: const BorderSide(color: Color(0xffEE8301)),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, 'Recovery');
                      }),
                      child: Text('Lupa kata sandi?',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffEE8301))))
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
