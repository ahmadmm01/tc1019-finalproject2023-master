import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

/// Kelas `BottomNavigationBinding` adalah pengikatan (binding) untuk Bottom Navigation Controller.
class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    /// Menggunakan Get.lazyPut untuk memasang (injeksi) BottomNavigationController.
    Get.lazyPut<BottomNavigationController>(
      () => BottomNavigationController(),
    );
  }
}
