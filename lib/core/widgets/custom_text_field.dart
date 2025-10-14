import 'package:flutter/material.dart';

/// This [CustomTextField] is basic minimal widget
/// it will be customized further with app's need
class CustomTextField extends StatefulWidget {
  final String? placeholder;
  final String? label;
  final TextEditingController? controller;
  final bool? enabled;
  final Widget? prefix;
  final Widget? suffix;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    this.placeholder = '',
    this.controller,
    this.label,
    this.enabled = true,
    this.prefix,
    this.suffix,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void dispose() {
    super.dispose();
    widget.controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(borderRadius: BorderRadius.circular(12));
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(9),
    );

    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
        prefix: widget.prefix,
        suffix: widget.suffix,
        label: Text(widget.label!),
        enabled: widget.enabled!,
        hintText: widget.placeholder,
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        errorBorder: errorBorder,
      ),
    );
  }
}
