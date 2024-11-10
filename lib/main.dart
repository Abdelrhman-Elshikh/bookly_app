import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';

void main() {
  runApp( DevicePreview(
    builder: (context) =>const BooklyAPP(), // Wrap your app
  ),);
}

class BooklyAPP extends StatelessWidget {
  const BooklyAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KPrimaryColor
      ),
      home: const SplashView(),
    );
  }
}
