import 'package:flutter/material.dart';
import 'package:notiqo/core/widgets/custom_app_bar_container.dart';
import 'package:notiqo/core/widgets/save_widget_of_app_bar.dart';

class CustomAddNoteAppBar extends StatelessWidget {
  const CustomAddNoteAppBar({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomAppBarContainer(
            onTap: () {
              Navigator.pop(context);
            },
            iconData: Icons.arrow_back_ios_new_outlined),
        Spacer(),
        SaveWidgetOfAppBar(onTap: onTap),
      ],
    );
  }
}
