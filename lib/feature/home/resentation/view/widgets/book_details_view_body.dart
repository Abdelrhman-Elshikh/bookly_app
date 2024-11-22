import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/custom_list_view.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/price_or_preview_widget.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/rating.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const BookDetailsAppBar(),
              const SizedBox(height: 20),
              const Expanded(
                flex: 10,
                child: FittedBox(
                  fit: BoxFit.scaleDown, child: Placeholder(),

                  //  CustomListViewItem(),
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: FittedBox(
                    // fit: BoxFit.scaleDown,
                    child: Text(
                  'The Jungle Book',
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(height: 6),
              Expanded(
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Opacity(
                        opacity: 0.7,
                        child: Text(
                          'Rudyard Kipling',
                          style: Styles.textStyle16.copyWith(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          ),
                        ))),
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                    child: Rating(
                      rating: 5,
                      count: 2500,
                    )),
              ),
              const SizedBox(height: 30),
              const Expanded(
                flex: 2,
                child: PriceOrPreviewWidget(),
              ),
              const SizedBox(height: 30),
              Flexible(
                child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle30
                          .copyWith(fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(height: 10),
              const Expanded(flex: 6, child: CustomListView()),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ]),
    );
  }
}
