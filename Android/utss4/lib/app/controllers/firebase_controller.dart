import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class FirebaseController extends GetxController {
  //TODO: Implement FirebaseController
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> streamAuthStatus() => auth.authStateChanges();

  login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: '${emailAddress}@gmail.com', password: password);
      Get.offAllNamed("/home", arguments: [emailAddress, password]);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.defaultDialog(
            title: "User Not Found",
            middleText: "No user found for that email.",
            backgroundColor: Colors.red,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
            radius: 15);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.defaultDialog(
            title: "Wrong Password",
            middleText: "Wrong password provided for that user.",
            backgroundColor: Colors.red,
            titleStyle: TextStyle(color: Colors.white),
            middleTextStyle: TextStyle(color: Colors.white),
            radius: 15);
      }
    }
  }

  signOut() {
    try {
      Get.defaultDialog(
          title: 'Warning',
          middleText: "Are you sure you want to sign out?",
          confirm: InkWell(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Get.offAllNamed(Routes.LOGIN);
            },
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(6)),
              child: Center(
                  child: Text(
                'Yes',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          cancel: InkWell(
            onTap: () async {
              Get.back();
            },
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(6)),
              child: Center(
                  child: Text(
                'No',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ));
    } on FirebaseAuthException catch (err) {
      print(err);
    }
  }
}
