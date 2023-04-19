import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_app/screens/profilepict_withdesc.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Profile',
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: Color(0x95484848),
            fontWeight: FontWeight.w600
          ), 
        ),
        leading: IconButton(onPressed: () {
          Navigator.pushNamed(context, 'Login');
        }, icon: Icon(Icons.arrow_back, color: Color(0xff484848),),
        ),  
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, 'Data Diri');
          }, icon: const Icon(Icons.edit, color: Color(0xff484848),))
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: const ProfilePictwithDesc(),
    );
  }
}

