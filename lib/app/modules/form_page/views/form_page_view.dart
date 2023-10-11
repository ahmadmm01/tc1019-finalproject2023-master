import 'package:final_project_2023/app/data/warna.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/form_page_controller.dart';

/// Tampilan (View) untuk halaman laporan sampah.
class FormPageView extends GetView<FormPageController> {
  const FormPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.3, 0.7],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.upload_file_outlined,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 480,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Laporkan Sampah",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Silahkan Isi Data Berikut",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 400,
                      child: Form(
                        key: controller.loginFormKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: controller.namaC,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                decoration: const InputDecoration(
                                  label: Text('Nama'),
                                  hintText: 'Isi Namamu',
                                  border: OutlineInputBorder(),
                                ),
                                onSaved: (newValue) {
                                  if (newValue != null) {
                                    controller.namaC.text = newValue;
                                  }
                                },
                                validator: (value) {
                                  return controller.validateName(value!);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: controller.descC,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                decoration: const InputDecoration(
                                  label: Text('Deskripsi sampah'),
                                  hintText: 'Isi Deskripsi',
                                  border: OutlineInputBorder(),
                                ),
                                onSaved: (newValue) {
                                  if (newValue != null) {
                                    controller.descC.text = newValue;
                                  }
                                },
                                validator: (value) {
                                  return controller.validatedesc(value!);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: controller.lokasiC,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                decoration: const InputDecoration(
                                  label: Text('Lokasi'),
                                  hintText: 'Isi Lokasi sampah',
                                  border: OutlineInputBorder(),
                                ),
                                onSaved: (newValue) {
                                  if (newValue != null) {
                                    controller.lokasiC.text = newValue;
                                  }
                                },
                                validator: (value) {
                                  return controller.validatelokasi(value!);
                                },
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      gradient: LinearGradient(
                                        colors: [
                                          gradientStartColor,
                                          gradientEndColor
                                        ],
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft,
                                        stops: const [0.3, 0.7],
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Get.back();
                                  },
                                ),
                                GestureDetector(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      gradient: LinearGradient(
                                        colors: [
                                          gradientStartColor,
                                          gradientEndColor
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        stops: const [0.3, 0.7],
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  onTap: () async {
                                    await controller.savedata(
                                        controller.namaC.text,
                                        controller.descC.text,
                                        controller.lokasiC.text);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
