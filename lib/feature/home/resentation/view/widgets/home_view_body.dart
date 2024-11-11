import 'package:bookly_app/core/feature/app_bar/view/custom_app_bar.dart';
import 'package:bookly_app/feature/home/resentation/view/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        // CustomListViewItem(),
        CustomListView(),
      ],
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CustomListViewItem(),
          );
        },
      ),
    );
  }
}
