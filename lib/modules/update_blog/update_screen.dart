// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feuerbase_ex/modules/update_blog/update_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../routes/app_pages.dart';

class UpdateScreen extends GetView<UpdateController> {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Color(0xff424242),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Update The Blog",
          style: TextStyle(
              color: Color(0xfFFFFFFF),
              fontSize: 3.h,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                "Title:",
                style: TextStyle(
                    color: Color(0xfFFFFFFF),
                    fontSize: 3.h,
                    letterSpacing: .5.w,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                //controller: controller.title,
                style: TextStyle(color: Color(0xfFFFFFFF), letterSpacing: .5.w),
                decoration: InputDecoration(
                    /* labelText: "Title", label text
                    labelStyle: TextStyle(
                        color: Color(0xfFFFFFFF),
                        fontSize: 3.h,
                        letterSpacing: .5.w,
                        fontWeight: FontWeight.w500),
                    alignLabelWithHint: true, */
                    hintText: "Change your the title of blog",
                    hintStyle: TextStyle(
                      color: Color(0xfFFFFFFF),
                      fontSize: 2.3.h,
                    ),
                    filled: true,
                    fillColor: Color(0xff424242)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                "Topic:",
                style: TextStyle(
                    color: Color(0xfFFFFFFF),
                    fontSize: 3.h,
                    letterSpacing: .5.w,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: SizedBox(
                height: 62.h,
                width: 100.w,
                child: TextFormField(
                  //controller: controller.topic,
                  style:
                      TextStyle(color: Color(0xfFFFFFFF), letterSpacing: .5.w),
                  maxLines: 45,
                  minLines: 3,
                  decoration: InputDecoration(
                      hintText: "Change your topic of blog",
                      hintStyle: TextStyle(
                        color: Color(0xfFFFFFFF),
                        fontSize: 2.3.h,
                      ),
                      filled: true,
                      fillColor: Color(0xff424242),
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder()),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  /* controller.storage
                      .addBlog(controller.title.text, controller.topic.text); */
                  Get.toNamed(Routes.HOME);
                },
                child: Center(
                  child: Text("Publish the Blog"),
                ))
          ],
        ),
      ),
    );
  }
}
