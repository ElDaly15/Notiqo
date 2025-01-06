import 'package:flutter/material.dart';
import 'package:notiqo/featuers/main/presentation/views/widgets/custom_main_app_bar.dart';
import 'package:notiqo/featuers/main/presentation/views/widgets/custom_sliver_of_notes.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SafeArea(child: SizedBox())),
          SliverToBoxAdapter(
              child: CustomMainAppBar(
            onPressed: () {},
          )),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 20,
          )),
          CustomSliverGridOfNotes(),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 20,
          )),
        ],
      ),
    );
  }
}
