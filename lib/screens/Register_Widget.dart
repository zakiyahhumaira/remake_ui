import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

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
    return Container(
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
                      'Daftar Akun',
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
                  height: 13,
                ),
                Row(
                  children: [
                    Text(
                      'Kata Sandi',
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
                      hintText: 'Masukkan Setidaknya 8 Karakter'),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Text(
                      'Nomor HP',
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
                      hintText: 'Masukkan Nomor HP Anda'),
                ),
                SizedBox(
                  height: 26,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Data Diri');
                  },
                  child: const Text('Lanjut'),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
