import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

/// Kelas `HasilLaporPageController` adalah kontroler untuk tampilan Hasil Lapor Page.
class HasilLaporPageController extends GetxController {
  /// Objek `Firestore` untuk berinteraksi dengan database Firestore.
  Firestore firestore = Firestore.instance;
  
  /// Metode `getReport` untuk mendapatkan data laporan tumpukan sampah dari Firestore.
  Future<Page<Document>> getReport() async {
    CollectionReference laporan = firestore.collection('sampah');

    return laporan.get();
  }
  
  /// Metode `getData` untuk mendapatkan data dari Firestore (tidak digunakan dalam kode HasilLaporPageView).
  Future<void> getData() async {
    final firestore = Firestore.instance;
    final laporan = firestore.collection('sampah');
    final snapshot = await laporan.get();
  }

  //TODO: Implement HasilLaporPageController

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
