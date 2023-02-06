import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
// //regiter or signup
registeruser() async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailcontroller.text,
      password: passwordcontroller.text,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

// //login
userlogin() async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text, password: passwordcontroller.text);
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => Dashboard_View()));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}

// //logout
// logout() async {
//   await FirebaseAuth.instance.signOut();
// }