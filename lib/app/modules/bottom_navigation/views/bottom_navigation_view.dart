// ignore_for_file: must_be_immutable

import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:final_project_2023/app/modules/lapor_page/views/lapor_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

/// Kelas `BottomNavigationView` adalah tampilan untuk tampilan utama dengan navigasi bawah (bottom navigation).
class BottomNavigationView extends GetView<BottomNavigationController> {
  /// Controller untuk mengelola navigasi bawah (bottom navigation).
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  
  /// Konstruktor untuk kelas `BottomNavigationView`.
  BottomNavigationView({Key? key}) : super(key: key);

  /// Daftar tampilan yang ditampilkan dalam bottom navigation.
  final screens = [
    const HomeView(),
    const LaporPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) {
              bottomNavigationController.changeIndex(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Beranda",
                backgroundColor: Color(0xFF9354B9),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.report),
                label: "Lapor",
                backgroundColor: Color.fromARGB(255, 20, 162, 101),
              ),
            ],
          )),
    );
  }
}
