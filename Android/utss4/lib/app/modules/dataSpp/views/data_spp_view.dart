import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_spp_controller.dart';

class DataSppView extends GetView<DataSppController> {
  const DataSppView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataSppView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DataSppView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
