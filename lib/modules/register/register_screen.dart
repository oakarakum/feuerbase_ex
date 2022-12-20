// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
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
        ],
      ),
    );
  }
}
