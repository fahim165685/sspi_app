import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Routine extends StatelessWidget {
  const Routine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ROUTINE'),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          InteractiveViewer(
            panEnabled: false, // Set it to false
            boundaryMargin: EdgeInsets.all(100),
            minScale: 0.5,
            maxScale: 2,
            child: Image.asset(
              'assets/images/class_rutin_1.jpg',
              width: Get.width,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),

          InteractiveViewer(
            panEnabled: false, // Set it to false
            boundaryMargin: EdgeInsets.all(100),
            minScale: 0.5,
            maxScale: 2,
            child: Image.asset(
              'assets/images/class_rutin_2.jpg',
              width: Get.width,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
