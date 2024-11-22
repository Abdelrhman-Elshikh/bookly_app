import 'package:bookly_app/feature/home/resentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const IntrinsicHeight(
              child: Padding(
            padding: EdgeInsets.only(bottom: 18.0), child: SliverToBoxAdapter(child: Placeholder()),
            //  BestSellerListViewItem(),
          ));
        });
  }
}
