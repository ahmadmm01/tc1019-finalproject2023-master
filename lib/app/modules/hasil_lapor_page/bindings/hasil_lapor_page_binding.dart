import 'package:get/get.dart';

import '../controllers/hasil_lapor_page_controller.dart';

class HasilLaporPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HasilLaporPageController>(
      () => HasilLaporPageController(),
    );
  }
}
