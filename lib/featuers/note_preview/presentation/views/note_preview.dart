import 'package:flutter/material.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/featuers/note_preview/presentation/views/widgets/note_preview_body.dart';

class NotePreview extends StatelessWidget {
  const NotePreview({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorTheme,
      body: NotePreviewBody(
        noteModel: noteModel,
      ),
    );
  }
}
