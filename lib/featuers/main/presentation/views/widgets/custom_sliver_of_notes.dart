import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notiqo/featuers/main/presentation/views/widgets/custom_note_widget.dart';
import 'package:get/get.dart' as g;
import 'package:notiqo/featuers/note_preview/presentation/views/note_preview.dart';

class CustomSliverGridOfNotes extends StatelessWidget {
  const CustomSliverGridOfNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        repeatPattern: QuiltedGridRepeatPattern.same,
        pattern: [
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => CustomNoteWidget(
          onTap: () {
            g.Get.to(() => const NotePreview(),
                transition: g.Transition.fade,
                duration: const Duration(milliseconds: 400));
          },
        ),
      ),
    );
  }
}
