// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feuerbase_ex/modules/blog_writing.dart/blog_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

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
          TextFormField(
            controller: controller.title,
          ),
          Text("Content"),
          TextFormField(
            controller: controller.topic,
          ),
          ElevatedButton(
              onPressed: () {
                controller.storage
                    .addBlog(controller.title.text, controller.topic.text);
                Get.toNamed(Routes.HOME);
              },
              child: Center(
                child: Text("Publish the Blog"),
              ))
        ],
      ),
    );
  }
}
