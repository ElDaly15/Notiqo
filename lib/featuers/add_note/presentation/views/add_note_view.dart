import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/widgets/custom_snack_bar.dart';
import 'package:notiqo/featuers/add_note/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/add_note_view_body.dart';
import 'package:notiqo/featuers/main/presentation/manager/get_notes_cubit/get_notes_cubit.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          BlocProvider.of<GetNotesCubit>(context).FetchNotes();
          Navigator.pop(context);
          CustomSnackBar().showCustomSnackBar(
              context: context,
              message: 'Note Added',
              type: AnimatedSnackBarType.success);
        }
        if (state is AddNoteFailuer) {
          CustomSnackBar().showCustomSnackBar(
              context: context,
              message: 'Failed To Add Note',
              type: AnimatedSnackBarType.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          progressIndicator: CircularProgressIndicator(
            color: AppColors.mainColorOfText,
          ),
          color: Colors.transparent,
          inAsyncCall: state is AddNoteLoading,
          child: Scaffold(
            backgroundColor: AppColors.mainColorTheme,
            body: const AddNoteViewBody(),
          ),
        );
      },
    );
  }
}
