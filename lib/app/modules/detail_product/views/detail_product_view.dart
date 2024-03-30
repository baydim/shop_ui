import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_product_controller.dart';

class DetailProductView extends StatelessWidget {
  const DetailProductView({Key? key, this.tag}) : super(key: key);
  final String? tag;
  @override
  Widget build(BuildContext context) {
    var controller =
        Get.put<DetailProductController>(DetailProductController(), tag: tag);
    return Obx(() {
      controller.barang.value = int.parse(tag ?? "0");
      return Scaffold(
        appBar: AppBar(
          title: Text('Selected Produc ${controller.barang.value}'),
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
                        onTap: () async {
                          try {
                            // Get.put<DetailProductController>(
                            //   DetailProductController(),
                            //   tag: i.toString(),
                            // );
                            Get.to(
                              () => DetailProductView(
                                tag: i.toString(),
                              ),
                              preventDuplicates: false,
                              arguments: i.toString(),
                            );
                          } catch (e) {
                            if (kDebugMode) {
                              print(e);
                            }
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      );
    });
  }
}
