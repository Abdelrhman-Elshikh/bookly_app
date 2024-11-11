import 'package:bookly_app/core/utils/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookly_app/core/utils/constants.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const BooklyAPP(), // Wrap your app
    ),

    // const BooklyAPP()
  );
}

class BooklyAPP extends StatelessWidget {
  const BooklyAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
