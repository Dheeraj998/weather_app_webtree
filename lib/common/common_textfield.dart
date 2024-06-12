import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {super.key,
      required this.controller,
      this.isDense = true,
      this.horizontalpadding,
      this.verticalPadding,
      this.prefixIconWidget,
      this.fillColor,
      this.borderRadius,
      this.borderColor,
      this.hintText,
      this.hintStyle});
  final TextEditingController controller;
  final bool? isDense;
  final TextStyle? hintStyle;
  final double? horizontalpadding;
  final double? verticalPadding;
  final Widget? prefixIconWidget;
  final Color? fillColor;
  final double? borderRadius;
  final Color? borderColor;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ??
            TextStyle(
                color: Colors.white,
                fontSize: 17.sp,
                fontWeight: FontWeight.w300),
        filled: fillColor != null ? true : false,
        prefixIcon: prefixIconWidget,
        contentPadding: EdgeInsets.symmetric(
            horizontal: horizontalpadding ?? 20.w,
            vertical: verticalPadding ?? 10.h),
        isDense: isDense,
        fillColor: fillColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 5.r),
            borderSide: BorderSide(color: borderColor ?? Colors.transparent)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 5.r),
            borderSide: BorderSide(color: borderColor ?? Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 5.r),
            borderSide: BorderSide(color: borderColor ?? Colors.transparent)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 5.r),
            borderSide: BorderSide(color: borderColor ?? Colors.transparent)),
      ),
    );
  }
}
