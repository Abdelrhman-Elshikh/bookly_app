import 'package:bookly_app/core/feature/custom_button/view/custom_button.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class PriceOrPreviewWidget extends StatelessWidget {
  const PriceOrPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(16),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '19.99\$',
                  style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w900, color: Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.orange,
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(16),
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('Free Preview',
                    style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
