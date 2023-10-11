import 'package:get/get.dart';

import '../controllers/home_controller.dart';

/// Binding (pengikatan) untuk halaman utama (home).
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Mengikat (bind) HomeController dengan GetX.
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
