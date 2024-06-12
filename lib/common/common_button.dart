import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_webtree/common/common_text.dart';
import 'package:weather_app_webtree/utils/constants/custom_print.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.buttonColor,
      this.buttonHeight,
      this.buttonWidth,
      this.horizontalpadding,
      this.verticalPadding,
      this.borderRadius,
      this.buttonStyle,
      this.icon,
      this.borderColor,
      this.iconColor,
      this.onLoading,
      this.leadingImage,
      this.leadingImageHeight,
      this.customBorderRadius,
      this.svgIcon});

  final VoidCallback onTap;
  final String buttonText;
  final Color? buttonColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? horizontalpadding;
  final double? verticalPadding;
  final double? borderRadius;
  final TextStyle? buttonStyle;
  final IconData? icon;
  final Color? borderColor;
  final bool? onLoading;
  final Color? iconColor;
  final String? leadingImage;
  final double? leadingImageHeight;
  final String? svgIcon;
  final BorderRadius? customBorderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (onLoading ?? false)
            ? () {
                customLog('already called');
              }
            : onTap,
        child: Container(
          height: buttonHeight,
          width: buttonWidth,
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding ?? 0,
              horizontal: horizontalpadding ?? 0),
          decoration: BoxDecoration(
              color: buttonColor,
              border:
                  borderColor != null ? Border.all(color: borderColor!) : null,
              borderRadius: customBorderRadius ??
                  BorderRadius.circular(borderRadius ?? 0)),
          child: (onLoading ?? false)
              ? FittedBox(
                  child: Padding(
                  padding: EdgeInsets.all(15.r),
                  child: const CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  ),
                ))
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (icon != null) ...[
                      Icon(icon, color: iconColor ?? Colors.white),
                      5.horizontalSpace,
                    ],
                    // if (leadingImage != null) ...[
                    //   ColoredBox(
                    //     color: Colors.red,
                    //     child: CachedNetworkImage(
                    //       fit: BoxFit.cover,
                    //       imageUrl: leadingImage!,
                    //       height: leadingImageHeight ?? 47.h,
                    //       width: leadingImageHeight ?? 47.w,
                    //       errorWidget: (context, url, error) =>
                    //           const Icon(Icons.error),
                    //       placeholder: (context, url) => ErrorShimmerWidget(
                    //         width: 47.w,
                    //         height: 47.h,
                    //       ),
                    //     ),
                    //   ),
                    //   10.horizontalSpace
                    // ],
                    CommonText(text: buttonText, textStyle: buttonStyle),
                  ],
                ),
        ));
  }
}
