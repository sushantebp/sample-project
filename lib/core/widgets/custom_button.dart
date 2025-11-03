import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

/// A basic minimal [CustomButton] widget
/// This [CustomButton] needs further customization and improvement as app grow
class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? titleStyle;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.titleStyle,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? context.colorScheme.primary,
        foregroundColor: foregroundColor ?? context.colorScheme.onPrimary,
        elevation: isLoading ? 0 : 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),

      onPressed: onPressed,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: isLoading
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(
                    width: AppSize.radiusMedium * 2,
                    height: AppSize.radiusMedium * 2,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  SizedBox(width: AppSize.radiusMedium),
                  Text("Please wait..."),
                ],
              )
            : Text(title, style: titleStyle ?? context.textTheme.titleMedium),
      ),
    );
  }
}
