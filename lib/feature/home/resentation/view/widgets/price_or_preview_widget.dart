import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class PriceOrPreviewWidget extends StatelessWidget {
  const PriceOrPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            alignment: Alignment.center,
            width: 230,
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(16),
              ),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '19.99\$',
                style: Styles.textStyle30
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            alignment: Alignment.center,
            width: 230,
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(16),
              ),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('Free Preview',
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}
