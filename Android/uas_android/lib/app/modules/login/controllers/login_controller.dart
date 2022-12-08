import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:uas2022/app/data/model/loginModel.dart';

class LoginController extends GetxController {
  //TODO: Implement printinController

  // final formKey = GlobalKey<FormState>().obs;
  bool toggle = true;
  final loginText = "Let's Sign You In,".obs;
  final img =
      "https://img.freepik.com/premium-vector/space-background-with-abstract-shape-stars_189033-30.jpg?w=2000"
          .obs;
  final count = 20.obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void onSubmit() {
    tombollogin();
    // print(emailText.value);
    // print(passwordText.value);
  }

  @override
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

  Future tombollogin() async {
    print("tombol di pencet");
    Uri url = Uri.parse("http://34.128.70.114/login");

    Map data = {"email": email.text, "password": password.text};
    print(email.text);
    print(password.text);

    var body = json.encode(data);

    final response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    if (response.statusCode == 200) {
      toggle = true;
      print(response);
      print("berhasil printin");
      Get.toNamed("/dashboard", arguments: email.text);
      print(response);
      // Redirect ke dashboard / homepage
      toggle = false;
    } else {
      toggle = false;
      print(response.statusCode.toString());
      print(response.body.toString());
      print("gagal login");
      toggle = true;
      // munculkan pesan error
    }
  }
}
