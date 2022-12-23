// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000000),
        appBar: AppBar(
          toolbarHeight: 1.h,
          backgroundColor: Color(0xff000000),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: .5.h),
                  child: Text(
                    "Blogs",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 3.5.h),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 72.w,
                        child: TextFormField(
                          style: TextStyle(color: Color(0xffFFFFFF)),
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            isDense: true,
                            suffixIcon: Icon(
                              Icons.search,
                              color: Color(0xffFFFFFF),
                              size: 3.h,
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Color(0xffFFFFFF),
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
                      ),
                      SizedBox(width: 4.w),
                      Container(
                        height: 6.3.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                          color: Color(0xff29B6F6),
                          borderRadius: BorderRadius.circular(2.w),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/icon.png",
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
