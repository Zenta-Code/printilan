import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final double? width;
  final Color? textColor;
  final double? fontSize;
  final Color? splashColor;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.width,
    this.textColor,
    this.fontSize,
    this.splashColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Poppins',
          color: textColor ?? Colors.white,
          backgroundColor: color ?? Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
