import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool obscureText;
  final String? prefixText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FormFieldValidator<String>? validator;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? errorBorderColor;
  final AutovalidateMode autovalidateMode;
  final int? maxlength;
  final Color? fillcolor;
  final bool? fill;

  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.hintText,
      this.prefixText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      this.validator,
      this.onChanged,
      this.contentPadding,
      this.borderColor,
      this.focusedBorderColor,
      this.enabledBorderColor,
      this.errorBorderColor,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.maxlength,
      this.fillcolor,
      this.fill});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
      onChanged: onChanged,
      maxLength: maxlength,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        filled: fill,
        fillColor: fillcolor,
        prefixText: prefixText,
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: borderColor ?? Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: focusedBorderColor ?? Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: enabledBorderColor ?? Colors.white,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: errorBorderColor ?? Colors.red),
        ),
      ),
    );
  }
}
