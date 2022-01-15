import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:rujita_app/Animations/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:rujita_app/model/auth.dart';
import 'package:rujita_app/screens/authenticate/signup_page.dart';
import 'package:rujita_app/screens/home/Home.dart';
import 'package:rujita_app/widgets/loading.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  bool _obscureText = true;
  bool loading = false;

  //text fields state
  String email = '';
  String password = '';
  String error = '';

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            resizeToAvoidBottomPadding: false,
            backgroundColor: Color.fromRGBO(3, 9, 23, 1),
            body: Padding(
              padding: EdgeInsets.all(30),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formkey,
                    //padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FadeAnimation(
                            1.2,
                            Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                          1.5,
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue[800], width: 2),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        width: 60,
                                        child: Icon(
                                          Icons.email,
                                          size: 20,
                                          color: Color(0xFFBB9B9B9),
                                        )),
                                    Expanded(
                                      //email field
                                      child: TextFormField(
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) => value.isEmpty
                                            ? 'Email can\'t be empty!'
                                            : null,
                                        onChanged: (value) {
                                          setState(() => email = value);
                                        },
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(vertical: 20),
                                            border: InputBorder.none,
                                            hintText: "Email address"),
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
                                        color: Colors.blue[800], width: 2),
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
                                        obscureText: _obscureText,
                                        validator: (value) => value.length < 6
                                            ? 'at least 6 characters.'
                                            : null,
                                        onChanged: (value) {
                                          setState(() => password = value);
                                        },
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(vertical: 20),
                                            border: InputBorder.none,
                                            hintText: "Password"),
                                      ),
                                    ),
                                    FlatButton(
                                        onPressed: _toggle,
                                        child: new Icon(_obscureText ? Icons.remove_red_eye : Icons.remove_red_eye))
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
                          height: 40,
                        ),
                        FadeAnimation(
                            1.8,
                            Center(
                                child: Column(
                              children: <Widget>[
                                Container(
                                  width: 120,
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue[800]),
                                  child: Center(
                                    //login button
                                    child: InkWell(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white),
                                      ),
                                      onTap: () async {
                                        if (_formkey.currentState.validate()) {
                                          setState(() => loading = true);
                                          dynamic result = await _auth
                                              .signInWithEmailAndPassword(
                                                  email, password);
                                          if (result == null) {
                                            setState(() {
                                              error =
                                                  'incorrect email or password!';
                                              loading = false;
                                            });
                                          } else {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Home()));
                                          }
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: FlatButton(
                                      child: Text(
                                        'Sign up',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpPage()));
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      error,
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 16.0),
                                    ),
                                  ),
                                ),
                              ],
                            ))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
