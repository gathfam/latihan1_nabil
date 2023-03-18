import 'package:get/get.dart';

import '../controllers/data_petugas_controller.dart';

class DataPetugasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataPetugasController>(
      () => DataPetugasController(),
    );
  }
}
