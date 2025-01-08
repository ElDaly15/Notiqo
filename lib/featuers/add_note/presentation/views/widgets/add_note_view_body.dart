import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/widgets/custom_snack_bar.dart';
import 'package:notiqo/core/widgets/custom_text_field.dart';
import 'package:notiqo/featuers/add_note/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_add_note_app_bar.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_list_view_of_circle_avatars.dart';

class AddNoteViewBody extends StatefulWidget {
  const AddNoteViewBody({super.key});

  @override
  State<AddNoteViewBody> createState() => _AddNoteViewBodyState();
}

class _AddNoteViewBodyState extends State<AddNoteViewBody> {
  String? title, content;
  String color = Color(0xffCACF85).toString();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: SizedBox(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomAddNoteAppBar(onTap: () async {
              if (content == null || title == null) {
                checkValidationOfNote(context);
              } else {
                await addNoteMethod(context);
              }
            }),
          ),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextField(
              onChanged: (value) {
                title = value;
              },
              textEditingController: TextEditingController(),
              title: 'Title',
              fontSize: 32,
              MaxLines: 1,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextField(
              onChanged: (value) {
                content = value;
              },
              textEditingController: TextEditingController(),
              title: 'Type something ...',
              fontSize: 20,
              MaxLines: null,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomListViewOfCirlceAvatarOfColors(
            colorCallBack: (color) {
              print(color);
              this.color = color.toString();
            },
          ),
        ),
      ],
    );
  }

  Future<void> addNoteMethod(BuildContext context) async {
    DateTime now = DateTime.now(); // Current date and time
    String formattedDate =
        DateFormat('MMMM d, y').format(now); // Format the date
    NoteModel noteModel = NoteModel(
        title: title!, content: content!, date: formattedDate, color: color);
    await BlocProvider.of<AddNoteCubit>(context).AddNote(noteModel: noteModel);
    print('done ');
  }

  void checkValidationOfNote(BuildContext context) {
    if (content == null && title == null) {
      CustomSnackBar().showCustomSnackBar(
          context: context,
          message: 'Please Enter Title and Content',
          type: AnimatedSnackBarType.error);
    }
    if (content == null && title != null) {
      CustomSnackBar().showCustomSnackBar(
          context: context,
          message: 'Please Enter Content',
          type: AnimatedSnackBarType.error);
    }
    if (title == null && content != null) {
      {
        CustomSnackBar().showCustomSnackBar(
            context: context,
            message: 'Please Enter Title',
            type: AnimatedSnackBarType.error);
      }
    }
  }
}
