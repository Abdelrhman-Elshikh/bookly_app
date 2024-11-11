import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const BooklyAPP(), // Wrap your app
    ),
  );
}

class BooklyAPP extends StatelessWidget {
  const BooklyAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashView(),
    );
  }
}
