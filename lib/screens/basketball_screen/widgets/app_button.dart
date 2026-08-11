
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.buttonColor,
    this.onPressed,
  });
  //func

  final String title;
  final Color? buttonColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? Colors.blue,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }
}
