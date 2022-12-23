import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/routes/app_pages.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }

  Future signIn(email, password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          // Get.toNamed(Routes.LOGIN);

          .then((value) => Get.toNamed(Routes.HOME));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Get.defaultDialog(title: "User not found");
      } else if (e.code == 'wrong-password') {
        return Get.defaultDialog(title: "Wrong password");
      }
    }
  }

  Future createUser(email, password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          // Get.toNamed(Routes.HOME);

          .then((value) => Get.defaultDialog(
              title: "Account has been created",
              confirm: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Text("Go to Login"))));

      //Get.toNamed(Routes.LOGIN);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Get.defaultDialog(title: "Weak password");
      } else if (e.code == 'email-already-in-use') {
        return Get.defaultDialog(title: "E-mail already exists.");
      }
    } catch (e) {
      print(e);
    }
  }
}
