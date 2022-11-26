import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  var tabIndex = 0;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
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
