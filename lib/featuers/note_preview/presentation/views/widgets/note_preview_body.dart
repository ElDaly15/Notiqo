import 'package:flutter/material.dart';
import 'custom_note_preview_app_bar.dart';

class NotePreviewBody extends StatelessWidget {
  const NotePreviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(child: SizedBox()),
          ),
          SliverToBoxAdapter(
            child: CustomNotePreviewAppBar(),
          )
        ],
      ),
    );
  }
}
