import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.assetsImagesLogo),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Read Free Books",
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
