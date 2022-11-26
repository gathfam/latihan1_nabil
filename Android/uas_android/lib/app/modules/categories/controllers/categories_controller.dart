import 'package:get/get.dart';

class CategoriesController extends GetxController {
  //TODO: Implement CategoriesController
  final cat = ["Romance", "Sci-fi", "Action", "Drama", "Phsycology"];
  final count = 0.obs;
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

  void increment() => count.value++;
}
