import 'package:flutter/material.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/app_colors.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomNoteWidget extends StatelessWidget {
  const CustomNoteWidget(
      {super.key, required this.onTap, required this.noteModel});
  final void Function() onTap;
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              noteModel.content,
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
                  noteModel.date,
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
