import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller untuk halaman login.
class LoginPageController extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  /// Fungsi untuk melakukan proses masuk (sign in) dengan Firebase Authentication.
  /// Fungsi ini menerima alamat email dan kata sandi sebagai argumen.
  Future signIn(String email, String pass) async {
    try {
      await _firebaseAuth.signIn(email, pass);
      await _firebaseAuth.getUser();
      Get.offAllNamed(Routes.BOTTOM_NAVIGATION);
    } catch (e) {
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Kesalahan Login",
            message: "Format email tidak sesuai",
            duration: Duration(seconds: 2),
          ),
        );
      } else if (e.toString() == "AuthException: INVALID_PASSWORD") {
        Get.showsnackbar(
          const GetSnackBar(
            title: "Kesalahan Login",
            message: "Password salah",
            duration: Duration(seconds: 2),
          ),
        );
      } else if (e.toString() == "AuthException: EMAIL_NOT_FOUND") {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Kesalahan Login",
            message: "User belum terdaftar",
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  //TODO: Implementasikan fitur-fitur lainnya sesuai kebutuhan.

  // Contoh: Untuk menghitung jumlah, Anda dapat menggunakan variabel `count`.
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

  // Contoh: Untuk menginkrementasi nilai `count`, Anda dapat menggunakan fungsi `increment`.
  // void increment() => count.value++;
}
