import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../data/model/BookModel.dart';
import '../../../data/service/BookService.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  String url = "https://teal-perfect-wasp.cyclic.app/nabil";
  final count = 0.obs;
  final pages = ["/home", "/search", "/collection"].obs;
  var isLoading = false.obs;
  final user = "Username".obs;
  final book = [].obs;
  var index = 1.obs;

  void onInit() {
    getBook();
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

//   getData() async {
//     final String response = await rootBundle
//         .loadString('https://teal-perfect-wasp.cyclic.app/nabil');
//     BookData data = bookDataFromJson(response);
//     // print(data.data);
//     // print("==========================");
//     dataBooks.value = data.data;
//     //mengirim data list food yang spesifik
//     // return data.data;
//   }
// }

  getBook() async {
    try {
      print('jalan');
      print(book.value);
      Uri urlData = Uri.parse(url);
      final responses = await http.get(urlData);
      print(responses.statusCode);
      if (responses.statusCode == 200) {
        BookData data = bookDataFromJson(responses.body.toString());
        // log("berhasil");
        print(data);
        print(data);
        book.value = data.data;
        return data;
      } else {
        print(responses.body);
        return [];
      }
    } catch (e) {
      print(e);
    }
  }
}
