import 'dart:ui';

import 'package:final_project_2023/app/data/data.dart';
import 'package:final_project_2023/app/data/warna.dart';
import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/lapor_page_controller.dart';

class LaporPageView extends GetView<LaporPageController> {
  const LaporPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              AppAssets.background,
              fit: BoxFit.contain,
            ).image,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 0),
                blurRadius: 15,
                spreadRadius: 15,
              )
            ],
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
              tileMode: TileMode.decal,
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                _bodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi yang mengembalikan widget untuk tampilan utama
  Widget _bodyWidget() {
    return Stack(
      children: [
        Positioned(child: _forgroundImageWidget()),
        _textContainer()
      ],
    );
  }

  // Fungsi yang mengembalikan widget untuk gambar latar depan
  Widget _forgroundImageWidget() {
    return Image.asset(
      AppAssets.forground,
      fit: BoxFit.contain,
    );
  }

  // Fungsi yang mengembalikan widget untuk kontainer teks
  Widget _textContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40,
      ).copyWith(top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
              children: [
                const TextSpan(text: "Ayo"),
                TextSpan(
                  text: " Laporkan\nTumpukan Sampah",
                  style: TextStyle(color: AppColors.primary),
                ),
                const TextSpan(text: " Di"),
                TextSpan(
                  text: "Kota",
                  style: TextStyle(color: AppColors.primary),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.FORM_PAGE);
                      },
                      child: const Text(
                        "LAPOR SAMPAH",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.HASIL_LAPOR_PAGE);
                        },
                        child: const Text(
                          "LIHAT LAPORAN",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
