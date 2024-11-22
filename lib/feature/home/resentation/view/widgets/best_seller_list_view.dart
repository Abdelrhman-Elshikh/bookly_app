import 'package:bookly_app/core/feature/custom_button/view/custom_error_widget.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/resentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          final List<BookModel> books = state.books;
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20.0, left: 16.0, right: 16.0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 150),
                    child: BestSellerListViewItem(book: books[index]),
                  ),
                );
              },
              childCount: books.length,
              // Number of items you want to display
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(errorMessage: state.errorMessage));
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
