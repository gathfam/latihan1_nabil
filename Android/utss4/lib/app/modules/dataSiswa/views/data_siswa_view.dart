import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_siswa_controller.dart';

class DataSiswaView extends GetView<DataSiswaController> {
  const DataSiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataSiswaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DataSiswaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
