// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feuerbase_ex/modules/homepage/homepage_controller.dart';
import 'package:feuerbase_ex/modules/routes/app_pages.dart';
import 'package:feuerbase_ex/modules/update_blog/update_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomepageScreen extends GetView<HomepageController> {
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 75.h,
                  width: 100.w,
                  child: StreamBuilder(
                      stream: controller.storage.readBlog(),
                      builder: ((context, snapshot) {
                        return !snapshot.hasData
                            ? Center(
                                child: Row(
                                  children: [
                                    CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "Loading....",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 5.h),
                                    ),
                                  ],
                                ),
                              )
                            : ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot blogList =
                                      snapshot.data!.docs[index];
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.h),
                                    child: Container(
                                        height: 34.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff718792),
                                            borderRadius:
                                                BorderRadius.circular(5.w)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2.w,
                                                  top: 2.w,
                                                  right: 2.w),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Image.asset(
                                                        "assets/blank-profile-picture-png-400x400.png"),
                                                  ),
                                                  SizedBox(width: 2.w),
                                                  Text(
                                                    "Writer Name-Surname",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffFFFFFF),
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 1.1.h),
                                                    child: Image.asset(
                                                      "assets/checkmark.png",
                                                      color: Color(0xffFFFFFF),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  GestureDetector(
                                                      onTap: () {
                                                        controller.storage
                                                            .deleteBlog(snapshot
                                                                .data!
                                                                .docs[index]
                                                                .id);
                                                      },
                                                      child: Icon(
                                                        Icons.delete,
                                                        color: Colors.red,
                                                      )),
                                                  ////////////
                                                  GestureDetector(
                                                      onTap: () {
                                                        controller.document_id =
                                                            snapshot.data!
                                                                .docs[index].id;
                                                        controller
                                                                .updateController
                                                                .document_id =
                                                            controller
                                                                .document_id;
                                                        //  controller.storage.updateBlog(snapshot.data!.docs[index].id, title, topic)
                                                        Get.toNamed(
                                                            Routes.UPDATE);
                                                        print(snapshot.data!
                                                            .docs[index].id);
                                                      },
                                                      child: Icon(
                                                        Icons.update,
                                                        color: Colors.white,
                                                      )),
                                                  /* ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.UPDATE);
                      },
                      child: Text("Update Screen"),
                    ), */
                                                ],
                                              ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 3.w, top: 3.w),
                                                child: Text(
                                                  "${blogList["Title"]}",
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontSize: 3.h,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 3.w,
                                                    top: 3.w,
                                                    right: 3.w),
                                                child: SizedBox(
                                                  height: 11.1.h,
                                                  width: 100.w,
                                                  child: Text(
                                                    "${blogList["Topic"]}",
                                                    //overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffFFFFFF),
                                                        fontSize: 2.4.h,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 3.w,
                                                    top: 3.w,
                                                    right: 3.w,
                                                    bottom: 2.h),
                                                child: Container(
                                                  height: 7.h,
                                                  width: 100.w,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff000000),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.3.w)),
                                                  child: Center(
                                                    child: Text(
                                                      "Read More",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffFFFFFF),
                                                          fontSize: 3.h,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                ))
                                          ],
                                        )),
                                  );
                                },
                              );
                      })),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    FloatingActionButton(
                      backgroundColor: Color(0xff718792),
                      onPressed: () {
                        Get.toNamed(Routes.BLOG);
                      },
                      child: Text("+",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 3.h,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
