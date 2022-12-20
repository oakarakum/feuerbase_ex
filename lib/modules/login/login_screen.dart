// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(toolbarHeight: 0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.h),
            Text(
              "Welcome",
              style: TextStyle(color: Colors.black, fontSize: 3.h),
            ),
            Container(
              height: 15.h,
              width: 30.w,
              margin: EdgeInsets.only(top: 2.h),
              decoration: BoxDecoration(
                  color: Color(0xff303243),
                  shape: BoxShape.circle,
                  border: Border.all(width: 0.3.w, color: Colors.grey),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"))),
              /* child: Image.network(
                "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
                fit: BoxFit.fill,
              ), */
            ),
            SizedBox(
              height: 2.h,
            ),
            TextFormField(
              //e-mail
              onTap: () {},
              keyboardType: TextInputType.emailAddress,

              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: "E-Mail",
                hintStyle: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.w500),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.3.w)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.4.w)),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            TextFormField(
              //password
              keyboardType: TextInputType.number,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.key_sharp,
                  color: Colors.black,
                ),
                hintText: "Password",
                hintStyle: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.3.w)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.4.w)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.h, left: 3.w, right: 3.w),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    side: BorderSide(color: Colors.black, width: 0.25.w)),
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
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 1.5.h),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide(color: Colors.black, width: 0.25.w)),
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
            /* Container(
              height: 7.h,
              width: double.infinity,
              margin: EdgeInsets.only(top: 3.h),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5.w)),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 4.h,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4),
                ),
              ),
            ), */

            /* Container(
              height: 7.h,
              width: double.infinity,
              margin: EdgeInsets.only(top: 3.h),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(5.w)),
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 4.h,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4),
                ),
              ),
            ) */
          ],
        ),
      ),
    );
  }
}
