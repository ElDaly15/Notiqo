import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomNoteWidget extends StatelessWidget {
  const CustomNoteWidget({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        decoration: BoxDecoration(
            color: Color(0xffE6EE9B), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How To Make your Presonal brand Stand out online How To Make your Presonal brand Stand out online How To Make your Presonal brand Stand out onlineHow To Make your Presonal brand Stand out onlineHow To Make your Presonal brand Stand out online . ',
              style: TextStyles.font24Regular(context),
              overflow: TextOverflow.ellipsis,
              maxLines: MediaQuery.of(context).size.width > 400 ? 4 : 3,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'May 21,2025',
                  style: TextStyles.font18Regular(context)
                      .copyWith(color: AppColors.secondaryColorOfText),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
