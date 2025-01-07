import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/utils/app_styles.dart';
import 'package:notiqo/core/widgets/custom_app_bar_container.dart';

class OptionsAppBar extends StatelessWidget {
  const OptionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomAppBarContainer(
          onTap: () {
            Navigator.pop(context);
          },
          iconData: Icons.arrow_back_ios_new_outlined,
        ),
        SizedBox(
          width: 20,
        ),
        Text('Options',
            style: TextStyles.font24SemiBold(context)
                .copyWith(color: AppColors.mainColorOfText, fontSize: 26)),
      ],
    );
  }
}
