import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("1.\n",style: TextStyle(color: Colors.white,fontSize: 30),),
            InteractiveViewer(
              panEnabled: false, // Set it to false
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.5,
              maxScale: 2,
              child: Image.asset(
                'assets/images/notis_1.jpg',
                width: Get.width,
                //height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const Text("2.\n",style: TextStyle(color: Colors.white,fontSize: 30),),
            InteractiveViewer(
              panEnabled: false, // Set it to false
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.5,
              maxScale: 2,
              child: Image.asset(
                'assets/images/notis_2.jpg',
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
            const Text("2.\n",style: TextStyle(color: Colors.white,fontSize: 30),),
            InteractiveViewer(
              panEnabled: false, // Set it to false
              boundaryMargin: EdgeInsets.all(100),
              minScale: 0.5,
              maxScale: 2,
              child: Image.asset(
                'assets/images/notis_3.jpg',
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
