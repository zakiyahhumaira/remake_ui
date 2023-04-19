import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_app/screens/Register_Widget.dart';

class Register_Screen extends StatelessWidget {
  const Register_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {
              Navigator.popAndPushNamed(context, '/');
            }),
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff484848),
            )),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: const RegisterWidget(),
      backgroundColor: Colors.white,
    );
  }
}
