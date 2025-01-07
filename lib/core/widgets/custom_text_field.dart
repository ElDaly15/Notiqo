import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.title,
      required this.fontSize,
      required this.MaxLines});
  final String title;
  final double fontSize;
  final int? MaxLines;

  @override
  Widget build(BuildContext context) {
    return TextSelectionTheme(
      data: TextSelectionThemeData(
          cursorColor: Colors.white,
          selectionColor: const Color.fromARGB(255, 116, 106, 106)
              .withOpacity(0.42), // Selection highlight color
          selectionHandleColor: Colors.white // Handle color
          ),
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyles.font24Medium(context).copyWith(
              color: AppColors.secondaryColorOfText, fontSize: fontSize),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        maxLines: MaxLines,
        style: TextStyles.font24SemiBold(context).copyWith(color: Colors.white),
        cursorColor: Colors.white,
      ),
    );
  }
}
