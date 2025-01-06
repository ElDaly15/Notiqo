import 'package:flutter/material.dart';
import 'package:notiqo/core/widgets/custom_app_bar_container.dart';

class CustomNotePreviewAppBar extends StatelessWidget {
  const CustomNotePreviewAppBar({super.key});

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
        Spacer(),
        CustomAppBarContainer(
          onTap: () {},
          iconData: Icons.delete,
        ),
        const SizedBox(
          width: 8,
        ),
        CustomAppBarContainer(
          onTap: () {},
          iconData: Icons.edit,
        ),
      ],
    );
  }
}
