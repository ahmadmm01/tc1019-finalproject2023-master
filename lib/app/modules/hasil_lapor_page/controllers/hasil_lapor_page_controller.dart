import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

class HasilLaporPageController extends GetxController {
  Firestore firestore = Firestore.instance;
  

  Future<Page<Document>> getReport() async {
    CollectionReference laporan = firestore.collection('sampah');

    return laporan.get();
  }
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
