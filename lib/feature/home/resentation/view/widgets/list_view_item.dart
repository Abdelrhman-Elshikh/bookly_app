import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/app_images.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        // width: MediaQuery.sizeOf(context).width * 0.,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.assetsImagesTestImage))),
      ),
    );
  }
}

