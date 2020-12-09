import 'package:bmicalculator/homepage/bmihome.dart';
import 'package:bmicalculator/homepage/homepagecontainers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'SignUp.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _obsecuretext = true;
  void _toggle() {
    setState(() {
      _obsecuretext = !_obsecuretext;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Welcome back!",
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Sign in to your account",
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 20, color: Colors.white38),
                ),
              ),
              TextFieldContainer(
                obsecuretext: false,
                prefixText: "Email",
              ),
              TextFieldContainer(
                obsecuretext: _obsecuretext,
                prefixText: "Password",
                suffixicon: (_obsecuretext)
                    ? FontAwesomeIcons.solidEye
                    : FontAwesomeIcons.solidEyeSlash,
                suffixOnPressed: _toggle,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Forgot password ?",
                  textAlign: TextAlign.end,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Mycontainer(
                height: 50,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "Continue",
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                onpressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Bmihome()));
                },
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?  ",
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Text(
                        "Sign Up",
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
