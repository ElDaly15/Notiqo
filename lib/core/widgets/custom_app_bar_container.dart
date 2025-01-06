import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';

class CustomAppBarContainer extends StatelessWidget {
  const CustomAppBarContainer(
      {super.key, required this.onTap, required this.iconData});
  final void Function() onTap;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: AppColors.secondaryColorTheme),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
