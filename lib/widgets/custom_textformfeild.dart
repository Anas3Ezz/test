import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;


  const CustomTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.keyboardType,

  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  static const _borderRadius = BorderRadius.all(Radius.circular(8));

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      focusNode: _focusNode,
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
        suffixIcon: widget.suffixIcon,
        border: OutlineInputBorder(
          borderRadius: _borderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: _borderRadius,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: _borderRadius,
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: _borderRadius,
          borderSide: BorderSide(color: Colors.red, width: 1.5),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: _borderRadius,
          borderSide: BorderSide(color: Colors.red, width: 1.5),
        ),
      ),
    );
  }
}