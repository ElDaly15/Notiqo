import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:notiqo/featuers/splash/presentation/views/splash_view.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const NotiqoApp()));
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
