import 'package:get/get.dart';

class LaporPageController extends GetxController {
  // TODO: Implementasi LaporPageController
  
  // Variabel count digunakan untuk menghitung jumlah.
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // Metode ini dipanggil saat controller diinisialisasi.
  }

  @override
  void onReady() {
    super.onReady();
    // Metode ini dipanggil setelah widget siap digunakan.
  }

  @override
  void onClose() {
    super.onClose();
    // Metode ini dipanggil saat controller dihapus.
  }

  // Metode ini digunakan untuk menambahkan nilai pada count.
  void increment() => count.value++;
}
