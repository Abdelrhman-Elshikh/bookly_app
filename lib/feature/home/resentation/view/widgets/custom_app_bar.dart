import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/routers/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Image.asset(Assets.assetsImagesLogo, height: 24))),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  GoRouter.of(context).push(KSearchView);
                },
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                iconSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
