import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber[300],
        ),
        const SizedBox(width: 6),
        const Text(
          ' 4.8 ',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 3),
        const Opacity(
          opacity: 0.5,
          child: Text(
            '(2390)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
