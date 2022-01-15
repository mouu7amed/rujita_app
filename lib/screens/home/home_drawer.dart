import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rujita_app/model/auth.dart';
import 'package:rujita_app/screens/authenticate/login_page.dart';
import 'package:rujita_app/screens/user/settings.dart';
import 'package:rujita_app/screens/user/profile_screen.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  AuthService authService = new AuthService();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<ScaffoldState> _formKey = new GlobalKey<ScaffoldState>();

  FirebaseUser user;
  Future<void> getUserData() async {
    FirebaseUser userData = await FirebaseAuth.instance.currentUser();
    setState(() {
      user = userData;
    });
  }

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    try {
      return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: user == null
                  ? Text('Loading .. ')
                  : Text('${user.displayName}',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
              accountEmail: user == null
                  ? Text('Loading .. ')
                  : Text('${user.email}',
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(fontSize: 14))),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://f0.pngfuel.com/png/136/22/profile-icon-illustration-user-profile-computer-icons-girl-customer-avatar-png-clip-art.png'),
              ),
              decoration: new BoxDecoration(color: Color(0xff5C9BE2)),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ))),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage())),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ))),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage())),
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Help & Support',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ))),
              onTap: () {
                helpAndSupportDialog(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log out',
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ))),
              onTap: () async {
                await _auth.signOut();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      );
    } catch (e) {
      print(e.toString());
    }
  }

  helpAndSupportDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Help and Support'),
            content: Text(
                'Please contact with the developer.\nMuhammed Azzab.\nSocial media username : @mouu7amed.'),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  void showInSnackBar(String value) {
    _formKey.currentState.showSnackBar(new SnackBar(content: new Text(value)));
  }
}
