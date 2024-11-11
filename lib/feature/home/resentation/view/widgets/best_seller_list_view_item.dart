import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          // height: MediaQuery.sizeOf(context).height * 0.19,
          height: 130,
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
              // width: MediaQuery.sizeOf(context).width * 0.,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(Assets.assetsImagesTestImage))),
            ),
          ),
        ),
        const SizedBox(width: 30),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('19.99\$',
                      style: Styles.textStyle18
                          .copyWith(fontWeight: FontWeight.bold)),
                  const Rating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
