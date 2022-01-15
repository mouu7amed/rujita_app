import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rujita_app/animations/FadeAnimation.dart';
import 'package:rujita_app/model/auth.dart';
import 'package:rujita_app/screens/home/Home.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<PasswordPage> {
  AuthService _auth = new AuthService();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool checkCurrentPasswordValid = true;
  String password = '';
  var _oldPasswordController = TextEditingController();
  var _newPasswordController = TextEditingController();
  var _repeatPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
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
          child: Form(
            key: _formkey,
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
                      color: Color(0xff01579B),
                      child: ListTile(
                        title: Text(
                          'Change Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Icon(
                          Icons.lock_outline,
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
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff01579B), width: 2),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  width: 60,
                                  child: Icon(
                                    Icons.vpn_key,
                                    size: 20,
                                    color: Color(0xFFBB9B9B9),
                                  )),
                              Expanded(
                                //password field
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  controller: _oldPasswordController,
                                  validator: (value) {
                                    return checkCurrentPasswordValid
                                        ? null
                                        : "Please check your current password.";
                                  },
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      border: InputBorder.none,
                                      hintText: "Old Password"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff01579B), width: 2),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  width: 60,
                                  child: Icon(
                                    Icons.vpn_key,
                                    size: 20,
                                    color: Color(0xFFBB9B9B9),
                                  )),
                              Expanded(
                                //password field
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  controller: _newPasswordController,
                                  validator: (value) => value.length < 6
                                      ? 'Password needs to be at least 6 characters.'
                                      : null,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      border: InputBorder.none,
                                      hintText: "New Password"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff01579B), width: 2),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  width: 60,
                                  child: Icon(
                                    Icons.vpn_key,
                                    size: 20,
                                    color: Color(0xFFBB9B9B9),
                                  )),
                              Expanded(
                                //password field
                                child: TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  controller: _repeatPasswordController,
                                  validator: (value) {
                                    return _newPasswordController.text == value
                                        ? null
                                        : "Password doesn't match!";
                                  },
//                                  onChanged: (value) {
//                                    setState(() => password = value);
//                                  },
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      border: InputBorder.none,
                                      hintText: "Repeat Password"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.8,
                      Center(
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            padding: EdgeInsets.all(15),
                            color: Color(0xff01579B),
                            onPressed: () async {
                              try {
                                checkCurrentPasswordValid =
                                    await _auth.validatePassword(
                                        _oldPasswordController.text);
                                if (_formkey.currentState.validate() &&
                                    checkCurrentPasswordValid) {
                                  _auth.updatePassword(
                                      _newPasswordController.text);
                                  successPasswordDialog(context);
                                }
                              } catch (e) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Error'),
                                        content: Text(e.toString()),
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
                            },
                            child: Text(
                              "Change",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  successPasswordDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Your password has been changed.'),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('OK'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ],
          );
        });
  }
}
