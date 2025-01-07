import 'package:flutter/material.dart';
import 'package:notiqo/core/widgets/custom_text_field.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_add_note_app_bar.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_list_view_of_circle_avatars.dart';

class AddNoteViewBody extends StatelessWidget {
  const AddNoteViewBody({super.key});

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
              onTap: () {},
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
          child: CustomListViewOfCirlceAvatarOfColors(),
        ),
      ],
    );
  }
}
