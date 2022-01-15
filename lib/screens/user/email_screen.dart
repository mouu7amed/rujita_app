import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rujita_app/animations/FadeAnimation.dart';

class EmailPage extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<EmailPage> {
  bool turnOnNotification = false;
  bool turnOnContact = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FadeAnimation(
                    1.2,
                    Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Color(0xff1B5E20),
                      child: ListTile(
                        title: Text(
                          'Email Settings',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    1.2,
                    Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            user == null
                                ? Text('Loading .. ',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                      fontSize: 16,
                                    )))
                                : Text('${user.email}',
                                    style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                      fontSize: 20,
                                    ))),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              height: 10.0,
                              color: Color(0xff000000),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Allow Email Notifications",
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff000000),
                                  )),
                                ),
                                Switch(
                                  value: turnOnNotification,
                                  activeColor: Color(0xff1B5E20),
                                  onChanged: (bool value) {
                                    // print("The value: $value");
                                    setState(() {
                                      turnOnNotification = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Allow Contact Via Email",
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff000000),
                                  )),
                                ),
                                Switch(
                                  value: turnOnContact,
                                  activeColor: Color(0xff1B5E20),
                                  onChanged: (bool value) {
                                    // print("The value: $value");
                                    setState(() {
                                      turnOnContact = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  FadeAnimation(
                    1.8,
                    Center(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(15),
                        color: Color(0xff1B5E20),
                        onPressed: () {
                          showInSnackBar('Submitted.');
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }
}
