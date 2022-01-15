import 'package:flutter/material.dart';
import 'package:rujita_app/screens/authenticate/intro_page.dart';

void main() => runApp(RujitaApp());

class RujitaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    try {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      );
    } catch (e) {
      print(e.toString());
    }
  }
}
