import 'package:get/get.dart';

import '../controllers/form_page_controller.dart';

/// Kelas `FormPageBinding` digunakan untuk mengikat atau memasang `FormPageController`
/// ke dalam aplikasi sehingga controller dapat digunakan dalam tampilan halaman.
class FormPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormPageController>(
      () => FormPageController(),
    );
  }
}
