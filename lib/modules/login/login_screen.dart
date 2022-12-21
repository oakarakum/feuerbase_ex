// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:feuerbase_ex/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0xff000000),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 30.h,
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
                  "Welcome",
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
                  "Login to your account",
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
                  style: TextStyle(color: Color(0xffFFFFFF)),
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (!GetUtils.isEmail(value!)) {
                      return "Email isn't valid";
                    } else if (value.isEmpty) {
                      return "Empty field";
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
                        color: Color(0xffFFFFFF),
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffFFFFFF), width: 0.3.w)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffFFFFFF), width: 0.4.w)),
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
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom:
                          MediaQuery.of(context).viewInsets.top > 0 ? 22.h : 0),
                  child: Obx(() => TextFormField(
                        //password
                        style: TextStyle(color: Color(0xffFFFFFF)),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: controller.isPasswordHidden.value,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field is empty";
                          }
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: Icon(
                            Icons.key_sharp,
                            color: Color(0xffFFFFFF),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              controller.isPasswordHidden.value =
                                  !controller.isPasswordHidden.value;
                            },
                            child: Icon(
                              Icons.visibility,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Color(0xffFFFFFF),
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffFFFFFF), width: 0.3.w)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffFFFFFF), width: 0.4.w)),
                        ),
                      )),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?",
                        style: TextStyle(
                            color: Color(0xffEA4335),
                            fontSize: 2.h,
                            fontWeight: FontWeight.w400))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h, left: 3.w, right: 3.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        side: BorderSide(color: Colors.black, width: 0.25.w),
                        alignment: Alignment.center,
                        minimumSize: Size(10.w, 6.h),
                        shape: StadiumBorder()),
                    child: Center(
                      child: Text(
                        "Login",
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
                        //Get.to(() => RegisterScreen());
                        controller.pageChanger();
                      },
                      child: Text("Create Now",
                          style: TextStyle(
                              color: Color(0xffD9D9D9),
                              fontSize: 2.h,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                SizedBox(
                  width: 45.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {}, child: Image.asset("assets/gmail.png")),
                      Spacer(),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset("assets/facebook.png")),
                      Spacer(),
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset("assets/instagram.png")),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
