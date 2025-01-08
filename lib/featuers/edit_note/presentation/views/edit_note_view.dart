import 'package:flutter/material.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/featuers/edit_note/presentation/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorTheme,
      body: EditNoteViewBody(
        noteModel: noteModel,
      ),
    );
  }
}
