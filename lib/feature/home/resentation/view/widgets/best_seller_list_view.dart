import 'package:bookly_app/feature/home/resentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20.0, left: 16.0, right: 16.0),
            child: BestSellerListViewItem(),
          );
        },
        childCount: 20,
        // Number of items you want to display
      ),
    );
  }
}
