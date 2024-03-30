import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_store_controller.dart';

class DetailStoreView extends GetView<DetailStoreController> {
  const DetailStoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailStoreView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailStoreView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
