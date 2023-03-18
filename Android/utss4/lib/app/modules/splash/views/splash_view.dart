import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:utss4/app/modules/config/color.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: mainColor,
            border: Border.all(color: Colors.black, width: 2)),
        child: Center(
          child: Text(
            'SPP',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
