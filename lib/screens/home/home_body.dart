import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../doctor_home_screen.dart';
import '../labs_home_screen.dart';
import '../pharmacy_home_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: Column(
      children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            'Choose Your Desired\nCategory',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xff000000)),
          ),
          Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(50.0),
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/doctorIcon.png',
                    height: 70,
                    width: 70,
                  ),
                  title: Text('Doctor',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w600))),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DoctorPage())),
                ),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/labsIcon.png',
                    height: 70,
                    width: 70,
                  ),
                  title: Text('Laboratory',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w600))),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LapsPage())),
                ),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/pharmacyIcon.png',
                    height: 70,
                    width: 70,
                  ),
                  title: Text('Pharmacy',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w600))),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PharmacyPage())),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
      ],
    ),
        ));
  }
}
