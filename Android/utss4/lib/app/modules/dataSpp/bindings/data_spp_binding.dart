import 'package:get/get.dart';

import '../controllers/data_spp_controller.dart';

class DataSppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataSppController>(
      () => DataSppController(),
    );
  }
}
