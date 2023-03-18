import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  List<String> items = [
    "siswa",
    "petugas",
    "admin",
  ];
  RxString selected = "".obs;

  TextEditingController nama = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onChange(value) {
    // print(value);
    selected.value = value;
  }

  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
