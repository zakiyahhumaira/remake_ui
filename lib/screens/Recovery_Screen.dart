import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_app/screens/Register_Widget.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const GarsiOutlineForm = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffEE8301), width: 2),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );
    var StyleAwalanForm = GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: const Color(0xff484848));
    var StyleIsianForm = GoogleFonts.poppins(
        fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff919191));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() {
            Navigator.pushNamed(context, 'Login');
          }),
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff484848),
          ),
        ),
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
                        'Pemulihan Kata Sandi',
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
                        style: StyleAwalanForm,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: GarsiOutlineForm,
                      hintStyle: StyleIsianForm,
                      hintText: 'Masukan Alamat Email UNPAK',
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'Login');
                          },
                          child: Text(
                            'Kata sandi baru akan dikirimkan ke alamat email Anda',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9f9f9f)),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Kirim'),
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
