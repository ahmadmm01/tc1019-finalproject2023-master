import 'package:final_project_2023/app/data/warna.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hasil_lapor_page_controller.dart';

/// Kelas `HasilLaporPageView` merupakan tampilan untuk menampilkan hasil laporan tumpukan sampah.
class HasilLaporPageView extends GetView<HasilLaporPageController> {
  /// Konstruktor kelas `HasilLaporPageView`.
  const HasilLaporPageView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    /// Membuat tampilan Scaffold dengan appBar dan body.
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
              stops: const [0.3, 0.7],
            ),
          ),
          child: FutureBuilder(
            /// Menggunakan fungsi `getReport` dari objek `controller` untuk mendapatkan data laporan.
            future: controller.getReport(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  /// Jika terdapat data, tampilkan data laporan dalam bentuk daftar.
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
                  /// Jika terjadi kesalahan dalam memperoleh data, tampilkan pesan kesalahan.
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  /// Jika tidak ada data yang ditemukan, tampilkan pesan "No Data".
                  return const Center(
                    child: Text('Tidak Ada Data'),
                  );
                }
              }
              
              /// Menampilkan indikator loading selama data sedang dimuat.
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
