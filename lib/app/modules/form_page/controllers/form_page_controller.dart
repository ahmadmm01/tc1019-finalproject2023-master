import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormPageController extends GetxController {
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  CollectionReference menucollection = Firestore.instance.collection('sampah');
    late TextEditingController namaC, descC, lokasiC;

  @override
  void onInit() {
    super.onInit();
    namaC = TextEditingController();
    descC = TextEditingController();
    lokasiC = TextEditingController();
  }

    String? validateName(String value) {
    if (value.isEmpty) {
      return "nama harus di isi";
    }
    return null;
  }

  String? validatedesc(String value) {
    if (value.isEmpty) {
      return "deskripsi harus di isi";
    }
    return null;
  }

    String? validatelokasi(String value) {
    if (value.isEmpty) {
      return "Lokasi harus di isi";
    }
    return null;
  }

  Future savedata(String nama, String desc, String lokasi) async {
    if (loginFormKey.currentState!.validate()) {
      loginFormKey.currentState!.save();
      await menucollection.add({"nama": nama, "deskripsi sampah": desc, "Lokasi sampah":lokasi});
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "data telah ditambah",
        onConfirm: () {
          Get.back();
          Get.back();
        },
        textConfirm: "okay",
      );
    }

  }

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
