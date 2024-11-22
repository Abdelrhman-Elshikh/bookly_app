import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  final double rating;
  final int count;
  const Rating({super.key, required this.count, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber[300],
        ),
        const SizedBox(width: 6),
         Text(
          '$rating',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 3),
         Opacity(
          opacity: 0.5,
          child: Text(
            '($count)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
