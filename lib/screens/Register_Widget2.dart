import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<String> list = <String>[
  'Ilmu Komputer',
  'Matematika',
  'Faramasi',
  'Biologi'
];

// void main() {
//   runApp(const DropdownButtonApp());
// }

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: DropdownButtonExample(),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    var StyleAwalanForm = GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: const Color(0xff484848));

    const GarsiOutlineForm = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffEE8301), width: 1),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );
    var StyleIsianForm = GoogleFonts.poppins(
        fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff919191));
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/vokasi_logo-fill.png',
              width: 72,
              height: 72,
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            children: [
              Text(
                'Detail Akun',
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
                'Nama',
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
              hintText: 'Masukan Nama Lengkap Anda',
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            children: [
              Text(
                'Nama Panggilan',
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
                hintText: 'Masukkan Nama Panggilan'),
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            children: [
              Text(
                'NPM',
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
                hintText: 'Masukkan NPM Anda'),
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            children: [
              Text(
                'Pilih Program Studi',
                style: StyleAwalanForm,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Color(0xffEE8301))),
            child: Container(
              padding: EdgeInsets.all(1),
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: DropdownButton<String>(
                  hint: Text(
                    'Program Studi',
                    style: StyleIsianForm,
                  ),
                  isExpanded: true,
                  value: null,
                  icon: const Icon(Icons.arrow_drop_down),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            children: [
              Text(
                'Alamat rumah / Kost',
                style: StyleAwalanForm,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            maxLines: 3,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffEE8301), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintStyle: StyleIsianForm,
                hintText: 'Masukkan alamat rumah/kost Anda'),
          ),
          SizedBox(
            height: 26,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pushNamed('Profile');
            },
            child: const Text('Lanjutkan'),
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
    );
  }
}
