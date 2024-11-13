import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/routers/routes.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(KBookDetailsView);
      },
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(Assets.assetsImagesTestImage))),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(
                    fontFamily: KGtSectraFine,
                  ),
                ),
                const Text('body', style: Styles.textStyle14),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.scaleDown,
                        child: Text('19.99\$',
                            style: Styles.textStyle18
                                .copyWith(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const Expanded(
                      child: FittedBox(
                          alignment: Alignment.centerRight,
                          fit: BoxFit.scaleDown,
                          child: Rating()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
