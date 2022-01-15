import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rujita_app/screens/home/home_body.dart';
import 'package:rujita_app/screens/home/home_drawer.dart';

class Home extends StatelessWidget {
  const Home({Key key, this.user}) : super(key: key);
  final FirebaseUser user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: new AppBar(
          title: Text('Rujita'),
          backgroundColor: Color(0xff5C9BE2),
        ),
        drawer: SideDrawer(),
        body: Body(),
    );
  }
}
