import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/screens/signup.dart';
import 'package:my_app/utils/colors.dart';
import 'package:my_app/utils/text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("images/bg.png"),
              Image.asset("images/Vector.png"),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Image.asset(
                  "images/LOGO1.png",
                  width: 250,
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 300.0),
                child: Text(
                  TextConstraint.name,
                  style: TextStyle(
                      fontSize: 50, color: ColorsConstraint.fontcolor),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 170),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  TextConstraint.title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorsConstraint.themecolor,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 170.0),
            child: Container(
              child: Text(
                TextConstraint.title2,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorsConstraint.themecolor,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 14.0, top: 10),
            child: Text(
              TextConstraint.subtitle,
              style: TextStyle(color: ColorsConstraint.themecolor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorsConstraint.themecolor,

                  // Background color
                ),
                child: Text(
                  TextConstraint.start,
                  style: TextStyle(fontSize: 30),
                )),
          )
        ],
      ),
    );
  }
}
