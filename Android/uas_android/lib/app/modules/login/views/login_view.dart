import 'package:flutter/material.dart';
import 'pages/banner.dart';
import 'pages/textfield.dart';
import 'package:get/get.dart';
import '../../component/button.dart';
import '../../component/buttonOutline.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      "Password",
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
                        "Login",
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
    );
  }
}
