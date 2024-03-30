import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../detail_product/controllers/detail_product_controller.dart';
import '../../detail_product/views/detail_product_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          for (var i = 0; i < Random().nextInt(2000) + 1000; i++)
            Card(
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Center(child: Text("$i")),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Get.put<DetailProductController>(
                          DetailProductController(),
                          tag: i.toString(),
                        );
                        Get.to(
                          () => DetailProductView(
                            tag: i.toString(),
                          ),
                          arguments: i.toString(),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
