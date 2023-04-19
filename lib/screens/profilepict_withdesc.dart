import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePictwithDesc extends StatelessWidget {
  const ProfilePictwithDesc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var styleProfile = GoogleFonts.poppins(
        fontSize: 12, fontWeight: FontWeight.w500, color: Color(0x908B8B8B));
    var styleisi = GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white);
    var styleisiawal = GoogleFonts.poppins(
        fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white);
    var styleisiawaldetail = GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: const Color(0xff484848));
    var styleisidetail = GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: const Color(0x90484848));
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          //Profile Picture
          Container(
            padding: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15.0,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Color(0xffEE8301)),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_pict.jpeg'),
              radius: 50,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Description
          Text(
            'Zakiyah Humaira',
            style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color(0xff484848)),
          ),
          Text('zakiyah.065120132@unpak.ac.id', style: styleProfile),
          Text('085348406011', style: styleProfile),
          SizedBox(
            height: 37,
          ),
          //Card Description
          Container(
            decoration: BoxDecoration(
                color: Color(0xffEE8301),
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(12),
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'NPM',
                      style: styleisiawal,
                    ),
                    Spacer(),
                    Text(
                      '065120132',
                      style: styleisi,
                    ),
                    SizedBox(width: 9),
                    Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                ),
                const Divider(
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Text(
                      'Status Keaktifan',
                      style: styleisiawal,
                    ),
                    Spacer(),
                    Text(
                      'Aktif',
                      style: styleisi,
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Text(
                      'Program Studi',
                      style: styleisiawal,
                    ),
                    Spacer(),
                    Text(
                      'Ilmu Komputer',
                      style: styleisi,
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Text(
                      'Jenjang Pendidikan',
                      style: styleisiawal,
                    ),
                    Spacer(),
                    Text(
                      'S1',
                      style: styleisi,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          //Detail Description
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text(
                  'Nama Lengkap',
                  style: styleisiawaldetail,
                ),
                const Spacer(),
                Text(
                  'Zakiyah Humaira',
                  style: styleisidetail,
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xffEE8301),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text(
                  'Panggilan',
                  style: styleisiawaldetail,
                ),
                const Spacer(),
                Text(
                  'Aza',
                  style: styleisidetail,
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xffEE8301),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alamat Rumah',
                  style: styleisiawaldetail,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Jl. Pangeran Ashogiri Perumahan Ciluar Asri Jl. Parkit 1 Blok A5 No.13',
                  style: styleisidetail,
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xffEE8301),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text(
                  'Kartu Mahasiswa',
                  style: styleisiawaldetail,
                ),
                const Spacer(),
                const Icon(
                  Icons.badge,
                  color: Color(0xffEE8301),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
