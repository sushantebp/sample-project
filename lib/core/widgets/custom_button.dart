import 'package:flutter/material.dart';
import 'package:sample_project/core/extensions/build_context_extension.dart';

/// A basic minimal [CustomButton] widget
/// This [CustomButton] needs further customization and improvement as app grow
class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? titleStyle;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      onPressed: onPressed,
      child: Text(title, style: titleStyle ?? context.textTheme.titleMedium),
    );
  }
}
