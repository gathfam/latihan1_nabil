import 'package:get/get.dart';

import '../controllers/data_siswa_controller.dart';

class DataSiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataSiswaController>(
      () => DataSiswaController(),
    );
  }
}
