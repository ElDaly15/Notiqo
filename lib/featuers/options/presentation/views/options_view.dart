import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/featuers/options/presentation/views/widgets/options_view_body.dart';

class OptionsView extends StatelessWidget {
  const OptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorTheme,
      body: const OptionsViewBody(),
    );
  }
}
