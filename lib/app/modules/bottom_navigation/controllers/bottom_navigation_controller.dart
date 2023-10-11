import 'package:get/get.dart';

/// Kelas `BottomNavigationController` adalah kontroler yang digunakan untuk mengelola navigasi bawah (bottom navigation) dalam aplikasi.
class BottomNavigationController extends GetxController {

  /// Variabel observabel `selectedIndex` digunakan untuk menyimpan indeks halaman saat ini yang dipilih.
  var selectedIndex = 0.obs;

  /// Metode `changeIndex` digunakan untuk mengubah indeks halaman yang dipilih.
  void changeIndex(int index){
    selectedIndex.value = index;
  }
  
  //TODO: Implement BottomNavigationController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
