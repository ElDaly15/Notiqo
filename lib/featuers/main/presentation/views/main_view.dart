import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/featuers/add_note/presentation/views/add_note_view.dart';
import 'package:notiqo/featuers/main/presentation/views/widgets/main_view_body.dart';
import 'package:get/get.dart' as g;

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorTheme,
      body: MainViewBody(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: AppColors.mainColorOfText,
        onPressed: () {
          g.Get.to(() => const AddNoteView(),
              transition: g.Transition.downToUp,
              duration: const Duration(milliseconds: 400));
        },
        child: const Icon(
          Icons.add,
          color: AppColors.mainColorTheme,
        ),
      ),
    );
  }
}
