import 'package:final_project_2023/app/data/warna.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hasil_lapor_page_controller.dart';

class HasilLaporPageView extends GetView<HasilLaporPageController> {
  const HasilLaporPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laporan tumpukan sampah'),
        centerTitle: true,
        backgroundColor: gradientEndColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.3, 0.7],
            ),
          ),
          child: FutureBuilder(
            future: controller.getReport(),
            // future: controller.getReport(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) => Card(
                          child: ListTile(
                            title: Text('Nama: '
                                '${snapshot.data![index].map['nama']}'),
                            subtitle: Text(
                                'Deskripsi Sampah : ${snapshot.data![index].map['deskripsi sampah']} \nLokasi : ${snapshot.data![index].map['Lokasi sampah']}'),
                          ),
                        ),
                      )
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return const Center(
                    child: Text('No Data'),
                  );
                }
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
