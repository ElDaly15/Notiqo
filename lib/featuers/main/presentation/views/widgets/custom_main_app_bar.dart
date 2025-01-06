import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/utils/app_images.dart';
import 'package:notiqo/core/utils/app_styles.dart';

class CustomMainAppBar extends StatelessWidget {
  const CustomMainAppBar({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesLogoErased,
          height: 50,
        ),
        SizedBox(
          width: 12,
        ),
        Text.rich(
          TextSpan(
            text: 'N',
            style: TextStyles.font24SemiBold(context)
                .copyWith(color: AppColors.mainColorOfText, fontSize: 25),
            children: [
              TextSpan(
                text: 'o',
                style: TextStyles.font24SemiBold(context).copyWith(
                    color: AppColors.secondaryColorOfText, fontSize: 25),
              ),
              TextSpan(
                text: 'tiq',
                style: TextStyles.font24SemiBold(context)
                    .copyWith(color: AppColors.mainColorOfText, fontSize: 25),
              ),
              TextSpan(
                text: 'o',
                style: TextStyles.font24SemiBold(context).copyWith(
                    color: AppColors.secondaryColorOfText, fontSize: 25),
              ),
            ],
          ),
        ),
        Spacer(),
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              FontAwesomeIcons.gear,
              color: AppColors.mainColorOfText,
            ))
      ],
    );
  }
}
