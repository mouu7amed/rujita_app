import 'package:rujita_app/Animations/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:rujita_app/model/auth.dart';
import 'package:rujita_app/screens/authenticate/login_page.dart';
import 'package:rujita_app/widgets/loading.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  bool _obscureText = true;
  bool loading = false;

  //text fields state
  String _name = '';
  String _mobile = '';
  String _email = '';
  String _password = '';
  String _error = '';

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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FadeAnimation(
                            1.2,
                            Text(
                              "Sign Up",
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
                                          Icons.person_pin,
                                          size: 20,
                                          color: Color(0xFFBB9B9B9),
                                        )),
                                    Expanded(
                                      //name text field
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter your name!';
                                          }
                                          return null;
                                        },
                                        onSaved: (value) => _name = value,
                                        onChanged: (value) {
                                          setState(() => _name = value);
                                        },
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(vertical: 20),
                                            border: InputBorder.none,
                                            hintText: "Name"),
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
                                          Icons.phone_android,
                                          size: 20,
                                          color: Color(0xFFBB9B9B9),
                                        )),
                                    Expanded(
                                      //phone text field
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter your phone number!';
                                          } else if (value.length < 11){
                                            return 'Please enter a valid phone number';
                                          }
                                          else if (value.length > 11){
                                            return 'Please enter a valid phone number';
                                          }
                                          return null;
                                        },
                                        onSaved: (value) => _mobile = value,
                                        keyboardType: TextInputType.phone,
                                        onChanged: (value) {
                                          setState(() => _mobile = value);
                                        },
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(vertical: 20),
                                            border: InputBorder.none,
                                            hintText: "Phone number"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              //email
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
                                      //email text field
                                      child: TextFormField(
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) => value.isEmpty
                                            ? 'Email can\'t be empty!'
                                            : null,
                                        onChanged: (value) {
                                          setState(() => _email = value);
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

                              //password
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
                                      //password text field
                                      child: TextFormField(
                                        keyboardType: TextInputType.visiblePassword,
                                        obscureText: _obscureText,
                                        validator: (value) => value.length < 6
                                            ? 'at least 6 characters.'
                                            : null,
                                        onChanged: (value) {
                                          setState(() => _password = value);
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
                                    child: InkWell(
                                      child: Text(
                                        "Sign up",
                                        style: TextStyle(
                                            color: Colors.white),
                                      ),
                                      onTap: () async {
                                        if (_formkey.currentState.validate()) {
                                          setState(() => loading = true);
                                          dynamic result = await _auth
                                              .signUpWithEmailAndPassword(
                                                  _email, _password, _name, _mobile);
                                          if (result == null) {
                                            setState(() {
                                              _error =
                                                  'please enter a valid email!';
                                              loading = false;
                                            });
                                          } else {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginPage()));
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
                                        "Login",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => LoginPage()));
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
                                      _error,
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
