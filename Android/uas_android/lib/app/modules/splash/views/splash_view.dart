import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:uas2022/app/modules/start/views/start_view.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: StartView(),
      duration: 4000,
      text: "LASKAR",
      textType: TextType.NormalText,
      textStyle: TextStyle(
          fontSize: 30.0,
          color: Colors.purple[800],
          fontWeight: FontWeight.w800),
      backgroundColor: Colors.white,
    );
  }
}
