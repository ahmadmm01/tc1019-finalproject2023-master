import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller untuk halaman pelaporan sampah.
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

  /// Fungsi untuk memvalidasi bidang "Nama" pada formulir.
  String? validateName(String value) {
    if (value.isEmpty) {
      return "Nama harus di isi";
    }
    return null;
  }

  /// Fungsi untuk memvalidasi bidang "Deskripsi Sampah" pada formulir.
  String? validatedesc(String value) {
    if (value.isEmpty) {
      return "Deskripsi harus di isi";
    }
    return null;
  }

  /// Fungsi untuk memvalidasi bidang "Lokasi Sampah" pada formulir.
  String? validatelokasi(String value) {
    if (value.isEmpty) {
      return "Lokasi harus di isi";
    }
    return null;
  }

  /// Fungsi untuk menyimpan data laporan sampah ke database.
  Future savedata(String nama, String desc, String lokasi) async {
    if (loginFormKey.currentState!.validate()) {
      loginFormKey.currentState!.save();
      await menucollection.add(
          {"nama": nama, "deskripsi sampah": desc, "Lokasi sampah": lokasi});
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Data telah ditambah",
        onConfirm: () {
          Get.back();
          Get.back();
        },
        textConfirm: "Okay",
      );
    }
  }
}
