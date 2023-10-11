import 'package:get/get.dart';

import '../controllers/register_page_controller.dart';

class RegisterPageBinding extends Bindings {
  @override
  void dependencies() {
    // Kelas RegisterPageBinding adalah bagian dari pengikatan GetX,
    // yang digunakan untuk mengatur dependensi dalam aplikasi Flutter.
    
    // Metode dependencies digunakan untuk mendefinisikan dependensi
    // yang diperlukan oleh kelas RegisterPage.

    // Get.lazyPut digunakan untuk memuat RegisterPageController secara malas.
    // Ini berarti RegisterPageController akan dibuat hanya ketika diperlukan
    // dan akan di-cache untuk digunakan kembali.
    Get.lazyPut<RegisterPageController>(
      () => RegisterPageController(),
    );
  }
}
