import 'package:get/get.dart';

import '../controllers/academies_controller.dart';

class AcademiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcademiesController>(
      () => AcademiesController(),
    );
  }
}
