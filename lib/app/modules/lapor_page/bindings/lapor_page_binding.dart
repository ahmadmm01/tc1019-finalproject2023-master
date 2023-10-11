/*
Deskripsi:
Kode ini adalah bagian dari pengikatan (binding) untuk halaman 'Lapor'. Pengikatan digunakan untuk mengatur dependensi yang diperlukan oleh halaman sehingga dapat menghubungkan controller yang sesuai dengan halaman tersebut.
*/

// Import pustaka 'get' yang digunakan untuk manajemen state dan pengendalian navigasi.
import 'package:get/get.dart';

// Import controller 'LaporPageController' yang akan dihubungkan dengan halaman ini.
import '../controllers/lapor_page_controller.dart';

// Kelas 'LaporPageBinding' adalah pengikatan (binding) khusus untuk halaman 'Lapor'.
class LaporPageBinding extends Bindings {
  @override
  void dependencies() {
    // Gunakan 'Get.lazyPut' untuk memasukkan instance 'LaporPageController' ke dalam manajemen dependensi.
    Get.lazyPut<LaporPageController>(
      () => LaporPageController(),
    );
  }
}
