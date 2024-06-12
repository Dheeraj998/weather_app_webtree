import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.text,
      this.color,
      this.fontWeight,
      this.fontSize,
      this.textStyle,
      this.maxLines,
      this.textOverflow,
      this.textAlign,
      this.fontStyle});

  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final FontStyle? fontStyle;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,
        style: textStyle ??
            TextStyle(
                fontStyle: fontStyle,
                color: color,
                fontSize: fontSize ?? 14.sp,
                fontWeight: fontWeight));
  }
}
