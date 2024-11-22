import 'package:cached_network_image/cached_network_image.dart';
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
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: CachedNetworkImage(
                imageUrl: url,
                fit: BoxFit.fill,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error_outline),
              ))

          //  Container(
          //     decoration: BoxDecoration(
          //         borderRadius: const BorderRadius.all(Radius.circular(24)),
          //         image: DecorationImage(
          //           fit: BoxFit.fill,
          //           image: NetworkImage(url),
          //         ))),
          ),
    );
  }
}
