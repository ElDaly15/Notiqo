import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';

class CustomColorCircleAvatar extends StatelessWidget {
  const CustomColorCircleAvatar(
      {super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isActive ? AppColors.mainColorOfText : color,
      radius: 42,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 40,
      ),
    );
  }
}
