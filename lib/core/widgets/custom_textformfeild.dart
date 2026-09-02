import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  final bool obscureText;
  final bool enabled;
  final bool readOnly;

  final int? maxLines;
  final int? maxLength;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final Color? fillColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? labelColor;

  final EdgeInsetsGeometry? contentPadding;
  final double borderRadius;

  const CustomTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines = 1,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.borderColor,
    this.focusedBorderColor,
    this.labelColor,
    this.contentPadding,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      enabled: enabled,
      readOnly: readOnly,
      maxLines: obscureText ? 1 : maxLines,
      maxLength: maxLength,

      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,

        labelStyle: TextStyle(
          color: labelColor ?? theme.colorScheme.onSurfaceVariant,
        ),

        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        filled: true,
        fillColor: fillColor ?? Colors.grey.shade100,

        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey.shade300,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey.shade300,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: focusedBorderColor ??
                theme.colorScheme.primary,
            width: 2,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),
    );
  }
}


// ### Example usage

// ```dart
// final emailController = TextEditingController();

// CustomTextFormField(
//   controller: emailController,
//   labelText: 'Email',
//   hintText: 'Enter your email',
//   keyboardType: TextInputType.emailAddress,
//   textInputAction: TextInputAction.next,
//   prefixIcon: const Icon(Icons.email_outlined),

//   validator: (value) {
//     if (value == null || value.trim().isEmpty) {
//       return 'Email is required';
//     }

//     if (!value.contains('@')) {
//       return 'Enter a valid email';
//     }

//     return null;
//   },
// )
// ```

// ### Password field

// ```dart
// CustomTextFormField(
//   labelText: 'Password',
//   hintText: 'Enter your password',
//   obscureText: true,
//   prefixIcon: const Icon(Icons.lock_outline),
//   suffixIcon: IconButton(
//     icon: const Icon(Icons.visibility_outlined),
//     onPressed: () {
//       // Toggle password visibility here
//     },
//   ),
//   validator: (value) {
//     if (value == null || value.isEmpty) {
//       return 'Password is required';
//     }

//     if (value.length < 8) {
//       return 'Password must be at least 8 characters';
//     }

//     return null;
//   },
// )
// ```

// ### Multiline field

// ```dart
// CustomTextFormField(
//   labelText: 'Description',
//   hintText: 'Write something...',
//   maxLines: 5,
//   keyboardType: TextInputType.multiline,
// )
// ```

// The widget is designed so you can use the same field throughout your app while changing only the parameters you need.
