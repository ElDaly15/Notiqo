import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/app_styles.dart';
import 'package:notiqo/core/utils/const.dart';
import 'package:notiqo/core/widgets/custom_app_bar_container.dart';
import 'package:get/get.dart' as g;
import 'package:notiqo/core/widgets/custom_snack_bar.dart';
import 'package:notiqo/featuers/edit_note/presentation/views/edit_note_view.dart';
import 'package:notiqo/featuers/main/presentation/manager/get_notes_cubit/get_notes_cubit.dart';

class CustomNotePreviewAppBar extends StatelessWidget {
  const CustomNotePreviewAppBar({super.key, required this.noteModel});
  final NoteModel noteModel;
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
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                    'Delete Note',
                    style: TextStyles.font22Regular(context),
                  ),
                  content: Text(
                    'Are you sure you want to delete this note?',
                    style: TextStyles.font18Regular(context),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyles.font18Regular(context),
                      ),
                    ),
                    TextButton(
                        onPressed: () async {
                          var notes =
                              await Hive.box<NoteModel>(Const.boxOfNotesName);
                          await notes.delete(noteModel.id);
                          await BlocProvider.of<GetNotesCubit>(context)
                              .FetchNotes();
                          CustomSnackBar().showCustomSnackBar(
                              context: context,
                              message: 'Note Deleted',
                              type: AnimatedSnackBarType.success);
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Delete',
                          style: TextStyles.font18Regular(context)
                              .copyWith(color: Colors.red),
                        )),
                  ],
                );
              },
            );
          },
          iconData: Icons.delete,
        ),
        const SizedBox(
          width: 8,
        ),
        CustomAppBarContainer(
          onTap: () {
            g.Get.to(
                () => EditNoteView(
                      noteModel: noteModel,
                    ),
                transition: g.Transition.fade,
                duration: const Duration(milliseconds: 400));
          },
          iconData: Icons.edit,
        ),
      ],
    );
  }
}
