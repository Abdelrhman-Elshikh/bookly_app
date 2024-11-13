import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/list_view_item.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/rating.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BookDetailsAppBar(),
          const SizedBox(height: 10),
          const Expanded(
            flex: 2,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: CustomListViewItem(),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.center,
              child: Text(
                'The Jungle Book',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.center,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
                child: Rating()),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
