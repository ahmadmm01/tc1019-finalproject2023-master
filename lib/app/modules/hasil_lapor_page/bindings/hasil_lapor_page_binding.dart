import 'package:get/get.dart';

import '../controllers/hasil_lapor_page_controller.dart';

/// Kelas `HasilLaporPageBinding` adalah pengikatan (binding) untuk Hasil Lapor Page.
class HasilLaporPageBinding extends Bindings {
  @override
  void dependencies() {
    /// Menggunakan Get.lazyPut untuk memasang (injeksi) HasilLaporPageController.
    Get.lazyPut<HasilLaporPageController>(
      () => HasilLaporPageController(),
    );
  }
}
