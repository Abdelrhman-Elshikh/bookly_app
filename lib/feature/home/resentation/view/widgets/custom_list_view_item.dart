import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/app_images.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.5,
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      Assets.assetsImagesTestImage,
                    ))),
          ),
        ));
  }
}
