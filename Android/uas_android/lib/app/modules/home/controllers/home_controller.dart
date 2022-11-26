import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../data/model/BookModel.dart';
import '../../../data/service/BookService.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final pages = ["/home", "/search", "/collection"].obs;
  List<BookData> dataBooks = [];

  void onInit() {
    // print("Book Data ${dataBooks}");
    getData().then((value) {
      dataBooks = value;
      update();
    });
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
    final String response =
        //proses membaca json menjadi string
        await rootBundle.loadString('../product.json');

    // merubah json menjadi variable dataFoods
    // DataProducts data = dataProductsFromJson(response);
    BookData data = bookDataFromJson(response);

    //mengirim data list food yang spesifik
    return data.data;
  }
}
