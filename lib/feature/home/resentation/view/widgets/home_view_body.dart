import 'package:bookly_app/feature/home/resentation/view/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/custom_list_view.dart';
import 'package:bookly_app/core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                CustomListView(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle18,
                  ),
                ),
              ],
            ),
          ),
          BestSellerListView(),
        ],
      ),
    );
  }
}
