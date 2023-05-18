import 'package:bookapp/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundcolor,
    required this.textColor,
    this.borderRadius,
    required this.text,
  });
  final String text;
  final Color backgroundcolor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius!,
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w900),
          )),
    );
  }
}
