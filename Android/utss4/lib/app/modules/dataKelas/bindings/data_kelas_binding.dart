import 'package:get/get.dart';

import '../controllers/data_kelas_controller.dart';

class DataKelasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataKelasController>(
      () => DataKelasController(),
    );
  }
}
