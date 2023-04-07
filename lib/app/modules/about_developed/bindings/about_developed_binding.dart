import 'package:get/get.dart';

import '../controllers/about_developed_controller.dart';

class AboutDevelopedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutDevelopedController>(
      () => AboutDevelopedController(),
    );
  }
}
