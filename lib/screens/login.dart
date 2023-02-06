import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/services/services.dart';
import 'package:my_app/utils/colors.dart';
import 'package:my_app/utils/text.dart';
TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 120.0),
            child: Container(
              child: Image.asset(
                "images/titlelogo.png",
                width: 200,
                height: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: Container(
              child: Text(
                TextConstraint.text,
                style:
                    TextStyle(color: ColorsConstraint.themecolor, fontSize: 30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20),
            child: Text(
              TextConstraint.subtitle,
              style: TextStyle(color: ColorsConstraint.themecolor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 4.0, left: 8.0, right: 8.0),
            child: TextField(
              controller: emailcontroller,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Email',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: TextField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: 'Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  TextConstraint.pass,
                  style: TextStyle(color: ColorsConstraint.passcolor),
                )),
          ),
          SizedBox(
            width: 300,
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  userlogin();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorsConstraint.themecolor,

                  // Background color
                ),
                child: Text(
                  TextConstraint.log,
                  style: TextStyle(fontSize: 30),
                )),
          )
        ],
      ),
    );
  }
}
