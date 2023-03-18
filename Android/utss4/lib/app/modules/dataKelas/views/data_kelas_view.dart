import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_kelas_controller.dart';

class DataKelasView extends GetView<DataKelasController> {
  const DataKelasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataKelasView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DataKelasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
