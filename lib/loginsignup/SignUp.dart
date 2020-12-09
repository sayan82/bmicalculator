import 'package:bmicalculator/homepage/homepagecontainers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Login.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                  "Welcome!",
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Create an account",
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 20, color: Colors.white38),
                ),
              ),
              TextFieldContainer(
                obsecuretext: false,
                prefixText: "First Name",
              ),
              TextFieldContainer(
                obsecuretext: false,
                prefixText: "Last Name",
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
                  print("Logged In");
                },
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?  ",
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginpage()));
                      },
                      child: Text(
                        "Sign In",
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
