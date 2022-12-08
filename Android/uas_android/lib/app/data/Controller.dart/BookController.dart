import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../model/BookModel.dart';
import '../service/BookService.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final pages = ["/home", "/search", "/collection"].obs;
  var dataBooks = [].obs;
  var index = 1.obs;

  void onInit() {
    // print("Book Data ${dataBooks}");
    // print("**************************");
    // getData().then((value) {
    //   dataBooks = value;
    //   print("value ${value}");
    // });

    // print("data books ${dataBooks.length}");
    // print("**************************");
    getData();
    // print(index);
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

  getData() async {
    final String response = await rootBundle.loadString('json/BookData.json');
    BookData data = bookDataFromJson(response);
    // print(data.data);
    // print("==========================");
    dataBooks.value = data.data;
    //mengirim data list food yang spesifik
    // return data.data;
  }
}
