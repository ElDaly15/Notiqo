import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notiqo/core/models/note_model.dart';
import 'package:notiqo/core/widgets/custom_text_field.dart';
import 'package:notiqo/featuers/add_note/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_add_note_app_bar.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_list_view_of_circle_avatars.dart';
import 'package:uuid/uuid.dart';

class AddNoteViewBody extends StatefulWidget {
  const AddNoteViewBody({super.key});

  @override
  State<AddNoteViewBody> createState() => _AddNoteViewBodyState();
}

class _AddNoteViewBodyState extends State<AddNoteViewBody> {
  String? title, content;
  int color = 0xffCACF85;
  var key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: CustomScrollView(
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
                if (key.currentState!.validate()) {
                  await addNoteMethod(context);
                } else {
                  print('not');
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
                  print(title);
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
                this.color = color;
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> addNoteMethod(BuildContext context) async {
    DateTime now = DateTime.now(); // Current date and time
    String formattedDate = DateFormat('MMMM d, y').format(now);
    var uuid = Uuid();
    print(uuid.v4());
    // Format the date
    NoteModel noteModel = NoteModel(
        id: uuid.v4(),
        dataTime: DateTime.now(),
        title: title!,
        content: content!,
        date: formattedDate,
        color: color);
    await BlocProvider.of<AddNoteCubit>(context).AddNote(noteModel: noteModel);
    print('done ');
  }
}
