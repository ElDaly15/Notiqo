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
      backgroundColor: isActive ? AppColors.mainColorOfText : Colors.red,
      radius: 42,
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 40,
      ),
    );
  }
}
