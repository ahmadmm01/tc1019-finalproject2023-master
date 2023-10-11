import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

/// Binding (pengikatan) untuk halaman login.
class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    // Mengikat (bind) LoginPageController dengan GetX.
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(),
    );
  }
}
