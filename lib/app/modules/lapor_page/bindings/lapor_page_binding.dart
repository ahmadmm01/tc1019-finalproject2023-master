import 'package:get/get.dart';

import '../controllers/lapor_page_controller.dart';

class LaporPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaporPageController>(
      () => LaporPageController(),
    );
  }
}
