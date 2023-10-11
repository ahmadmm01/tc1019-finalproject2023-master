import 'package:final_project_2023/app/data/hive.dart';
import 'package:final_project_2023/app/data/token_adapter.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/routes/app_pages.dart';

// Kunci API Firebase
const apiKey = "AIzaSyCjlDqahWTLvB6u7P9zhak8yPqkcTpj_ps";

// ID proyek Firebase
const projectId = "final-project-2023-5b9d5";

void main() async {
  // Memastikan inisialisasi Flutter telah terjadi
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi Hive untuk penyimpanan lokal
  await Hive.initFlutter();
  Hive.registerAdapter(TokenAdapter());

  // Menginisialisasi Firebase Authentication
  FirebaseAuth.initialize(apiKey, await HiveStore.create());

  // Menginisialisasi Firebase Firestore
  Firestore.initialize(projectId);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
