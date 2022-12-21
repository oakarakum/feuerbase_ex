// ignore_for_file: prefer_const_constructors

import 'package:feuerbase_ex/modules/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0xff000000),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            SizedBox(
                height: 22.h,
                width: 100.w,
                child: Image.asset(
                  "assets/background.png",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  Text(
                    "Register",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 3.3.h,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.3.w),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Create a new account",
                    style: TextStyle(
                        color: Color(0xffC4C4C4),
                        fontSize: 3.h,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 2.h),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.4.h,
                  ),
                  TextFormField(
                    onTap: () {},
                    style: TextStyle(color: Color(0xffFFFFFF)),
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (!GetUtils.isUsername(value!)) {
                        return "Username isn't valid";
                      } else {
                        return null;
                      }
                    },
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assets/user_icon.png",
                          color: Color(0xffFFFFFF)),
                      hintText: "Username",
                      hintStyle: TextStyle(
                          color: Color(0xffC4C4C4),
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffFFFFFF), width: 0.3.w)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffFFFFFF), width: 0.4.w)),
                    ),
                  ),
                  SizedBox(
                    height: 1.4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "E-Mail",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 2.h),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.4.h,
                  ),
                  TextFormField(
                    onTap: () {},
                    style: TextStyle(color: Color(0xffC4C4C4)),
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (!GetUtils.isEmail(value!)) {
                        return "E-mail isn't valid";
                      } else {
                        return null;
                      }
                    },
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xffFFFFFF),
                      ),
                      hintText: "E-Mail",
                      hintStyle: TextStyle(
                          color: Color(0xffC4C4C4),
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffFFFFFF), width: 0.3.w)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffFFFFFF), width: 0.4.w)),
                    ),
                  ),
                  SizedBox(
                    height: 1.4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 2.h),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.4.h,
                  ),
                  TextFormField(
                    onTap: () {},
                    style: TextStyle(color: Color(0xffFFFFFF)),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (!GetUtils.isPhoneNumber(value!)) {
                        return "Phone number isn't valid";
                      } else {
                        return null;
                      }
                    },
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xffFFFFFF),
                      ),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                          color: Color(0xffC4C4C4),
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffFFFFFF), width: 0.3.w)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffFFFFFF), width: 0.4.w)),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 2.h),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.4.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom > 0
                            ? 22.h
                            : 0),
                    child: TextFormField(
                      //password
                      style: TextStyle(color: Color(0xffFFFFFF)),
                      //inputFormatters: [FilteringTextInputFormatter.digitsOnly], sadece sayı olması için
                      //keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isDense: true,
                        prefixIcon: Icon(
                          Icons.key_sharp,
                          color: Color(0xffFFFFFF),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Color(0xffFFFFFF),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Color(0xffC4C4C4),
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffFFFFFF), width: 0.3.w)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffFFFFFF), width: 0.4.w)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, left: 3.w, right: 3.w),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          side: BorderSide(color: Colors.black, width: 0.25.w),
                          alignment: Alignment.center,
                          minimumSize: Size(10.w, 6.h),
                          shape: StadiumBorder()),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 3.5.h,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have account?",
                          style: TextStyle(
                              color: Color(0xff616161),
                              fontSize: 2.h,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.3.w)),
                      SizedBox(
                        width: 3.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.returnToLogin();
                        },
                        child: Text("Login",
                            style: TextStyle(
                                color: Color(0xffD9D9D9),
                                fontSize: 2.h,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
