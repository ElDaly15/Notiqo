import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/utils/const.dart';
import 'package:notiqo/core/widgets/custom_snack_bar.dart';
import 'package:notiqo/core/widgets/custom_text_field.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_add_note_app_bar.dart';
import 'package:notiqo/featuers/main/presentation/manager/get_notes_cubit/get_notes_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

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
            child: CustomAddNoteAppBar(
              onTap: () async {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.content = content ?? widget.noteModel.content;
                widget.noteModel.dataTime = DateTime.now();
                var notes = await Hive.box<NoteModel>(Const.boxOfNotesName);
                await notes.put(widget.noteModel.id, widget.noteModel);
                await BlocProvider.of<GetNotesCubit>(context).FetchNotes();
                Navigator.pop(context);
                Navigator.pop(context);
                CustomSnackBar().showCustomSnackBar(
                    context: context,
                    message: 'Note Updated',
                    type: AnimatedSnackBarType.success);
              },
            ),
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
              textEditingController: TextEditingController(
                text: widget.noteModel.title,
              ),
              title: 'Title',
              fontSize: 32,
              MaxLines: null,
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
              textEditingController: TextEditingController(
                text: widget.noteModel.content,
              ),
              title: 'Type something ...',
              fontSize: 18,
              MaxLines: null,
            ),
          ),
        ),
      ],
    );
  }
}
