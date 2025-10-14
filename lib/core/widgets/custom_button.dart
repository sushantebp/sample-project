import 'package:flutter/material.dart';
import 'package:sample_project/core/extensions/build_context_extension.dart';

/// A basic minimal [CustomButton] widget
/// This [CustomButton] needs further customization and improvement as app grow
class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? context.colorScheme.primary,
        foregroundColor: foregroundColor ?? context.colorScheme.onPrimary,
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
