import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_petugas_controller.dart';

class DataPetugasView extends GetView<DataPetugasController> {
  const DataPetugasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataPetugasView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DataPetugasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
