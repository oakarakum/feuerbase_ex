// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feuerbase_ex/modules/blog_writing.dart/blog_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogScreen extends GetView<BlogController> {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Title"),
          TextFormField(),
          Text("Content"),
          TextFormField(),
        ],
      ),
    );
  }
}
