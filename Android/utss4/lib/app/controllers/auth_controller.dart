import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  String url = "http://172.16.70.71:8000/login";

  Future<void> loginApi(String name, String password, String role) async {
    Map data = {
      'nama': name,
      'nis': password,
      'role': role,
    };
    try {
      final prefs = await SharedPreferences.getInstance();
      print(url);
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(data),
      );
      print("Response =>");
      // log(response.toString());
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("Login Success");
        prefs.setString("login", response.body);
        // print(prefs);
        Get.offAllNamed("/home", arguments: data);
      } else {
        // Error occurred
        print("Login Failed");
      }
    } catch (e) {
      print(e);
      Get.defaultDialog(
          titlePadding: EdgeInsets.only(top: 20),
          title: "Error",
          middleText: e.toString(),
          backgroundColor: Colors.red,
          titleStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          middleTextStyle: TextStyle(color: Colors.white),
          radius: 15);
    }
  }
}
