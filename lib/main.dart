import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:notiqo/featuers/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const NotiqoApp());
}

class NotiqoApp extends StatelessWidget {
  const NotiqoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
