import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/routers/routes.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  final BookModel book;
  const BestSellerListViewItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(KBookDetailsView);
      },
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 2 / 3,
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: CachedNetworkImage(
                    imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error_outline),
                  ))),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  book.volumeInfo!.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle14.copyWith(
                    fontFamily: KGtSectraFine,
                  ),
                ),
                Text(book.volumeInfo!.authors![0],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.scaleDown,
                        child: Text('Free',
                            style: Styles.textStyle18
                                .copyWith(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const Expanded(
                      child: FittedBox(
                          alignment: Alignment.centerRight,
                          fit: BoxFit.scaleDown,
                          child: Rating(
                            rating: 5,
                            count: 2000,
                          )),
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
