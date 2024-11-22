import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  final String url;

  const CustomListViewItem({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: AspectRatio(
          aspectRatio: 2 / 3,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(url),
                  )))),
    );
  }
}
