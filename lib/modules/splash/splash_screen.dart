// ignore_for_file: prefer_const_constructors

import 'package:feuerbase_ex/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Center(
          child: Container(
            height: 35.h,
            width: 80.w,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              "assets/firebase_logo.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
