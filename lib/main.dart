import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mojaru_f_app/pages/details_page.dart';
import 'package:mojaru_f_app/pages/pg_sample_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),

      routes: {
        "/": (context) => PgSamplePage(),
        "/pg_sample_page": (context) => PgSamplePage(),
        "/details_page": (context) => DetailsPage()
      },
    );
  }
}

