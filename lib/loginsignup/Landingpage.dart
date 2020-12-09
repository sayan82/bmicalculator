import 'package:bmicalculator/homepage/homepagecontainers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Login.dart';
import 'SignUp.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(top: height * .05),
              width: width,
              //height: height * .3,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/bmi.png')),
              ),
            ),
          ),
          Expanded(
            child: Text(
              '''Your Body Mass Index
Under Control''',
              maxLines: 3,
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              '''Check Your BMI on Regular
Basis''',
              style: TextStyle(fontSize: 16, color: Colors.white54),
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(
            height: height * .1,
          ),
          Expanded(
            child: Mycontainer(
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginpage()));
              },
              height: 50,
              color: Colors.red,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email_outlined),
                    SizedBox(width: 15),
                    Text(
                      "Sign In With Email ID",
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Mycontainer(
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
              height: 50,
              color: Colors.white,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.user,
                      color: Colors.black,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Sign Up With Email ID",
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      //textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Sign in With",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Text(
              //   "Or Log in With",
              //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // ),
              Icon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              Icon(
                FontAwesomeIcons.facebookF,
                color: Colors.blue,
              ),
              Icon(FontAwesomeIcons.apple),
            ],
          )),
          SizedBox(
            height: height * .03,
          )
        ],
      ),
    );
  }
}
