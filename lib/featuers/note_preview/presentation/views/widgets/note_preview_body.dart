import 'package:flutter/material.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/utils/app_styles.dart';
import 'custom_note_preview_app_bar.dart';

class NotePreviewBody extends StatelessWidget {
  const NotePreviewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(child: SizedBox()),
          ),
          SliverToBoxAdapter(
            child: CustomNotePreviewAppBar(
              noteModel: noteModel,
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              noteModel.title,
              style: TextStyles.font24SemiBold(context)
                  .copyWith(color: AppColors.mainColorOfText, fontSize: 28),
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Text(
                  noteModel.date,
                  style: TextStyles.font18Medium(context)
                      .copyWith(color: AppColors.secondaryColorOfText),
                ),
                const Spacer(),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.copy,
                      color: AppColors.mainColorOfText,
                    ))
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              noteModel.content,
              style: TextStyles.font20Regular(context)
                  .copyWith(color: AppColors.mainColorOfText),
            ),
          ),
        ],
      ),
    );
  }
}
