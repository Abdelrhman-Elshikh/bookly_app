import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/style.dart';

class CustomButton extends StatelessWidget {
  final BorderRadiusGeometry borderRadius;
  final Function()? onTap;
  final Color? backgroundColor;
  final Widget child;

  const CustomButton({
    required this.child,
    required this.borderRadius,
    this.onTap,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap ?? () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            )),
        child: child);
  }
}
