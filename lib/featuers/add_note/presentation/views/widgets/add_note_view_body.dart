import 'package:flutter/material.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_add_note_app_bar.dart';

class AddNoteViewBody extends StatelessWidget {
  const AddNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SafeArea(child: SizedBox())),
          SliverToBoxAdapter(
            child: CustomAddNoteAppBar(
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
