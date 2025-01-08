import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/utils/app_styles.dart';
import 'package:notiqo/core/utils/const.dart';
import 'package:notiqo/core/widgets/custom_snack_bar.dart';
import 'package:notiqo/featuers/main/presentation/manager/get_notes_cubit/get_notes_cubit.dart';

import 'package:notiqo/featuers/options/presentation/views/widgets/options_app_bar.dart';

class OptionsViewBody extends StatelessWidget {
  const OptionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(),
          ),
          OptionsAppBar(),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: AppColors.mainColorOfText,
            ),
            child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          'Delete All Notes',
                          style: TextStyles.font22Regular(context),
                        ),
                        content: Text(
                          'Are you sure you want to delete all notes?',
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
                                var box = await Hive.openBox<NoteModel>(
                                    Const.boxOfNotesName);
                                await box.clear();
                                await BlocProvider.of<GetNotesCubit>(context)
                                  ..FetchNotes();
                                Navigator.pop(context);
                                CustomSnackBar().showCustomSnackBar(
                                    context: context,
                                    message: 'All Notes Deleted',
                                    type: AnimatedSnackBarType.success);
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
                child: Text(
                  'Delete all notes ',
                  style: TextStyles.font20SemiBold(context)
                      .copyWith(color: Colors.red),
                )),
          ),
        ],
      ),
    );
  }
}
