import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/feature/search/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/feature/search/view/widgets/search_result.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 15.0),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 15.0),
          Expanded(child: SearchResult()),
        ],
      ),
    );
  }
}
