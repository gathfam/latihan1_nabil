import 'package:flutter/material.dart';
import '../../login/views/pages/textfield.dart';
import '../../login/views/pages/banner.dart';
import 'package:get/get.dart';
import '../../component/button.dart';
import '../../component/buttonOutline.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      banner(context),
                      field(
                        context,
                        "Email/Phone",
                      ),
                      field(
                        context,
                        "Username",
                      ),
                      field(
                        context,
                        "Password",
                      ),
                      field(
                        context,
                        "Confirm Password",
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonOutline(
                          "Cancel",
                          "/start",
                          context,
                          Colors.purple,
                          0.42,
                          13,
                        ),
                        button(
                          "Register",
                          "/dashboard",
                          context,
                          Colors.white,
                          0.42,
                          13,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
