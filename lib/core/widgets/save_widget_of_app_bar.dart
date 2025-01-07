import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/utils/app_styles.dart';

class SaveWidgetOfAppBar extends StatelessWidget {
  const SaveWidgetOfAppBar({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: AppColors.secondaryColorTheme),
        child: Center(
          child: Text(
            'Save',
            style: TextStyles.font20SemiBold(context)
                .copyWith(color: AppColors.mainColorOfText),
          ),
        ),
      ),
    );
  }
}
