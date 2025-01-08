import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/utils/app_styles.dart';
import 'package:notiqo/featuers/main/presentation/manager/get_notes_cubit/get_notes_cubit.dart';
import 'package:notiqo/featuers/main/presentation/views/widgets/custom_main_app_bar.dart';
import 'package:notiqo/featuers/main/presentation/views/widgets/custom_sliver_of_notes.dart';
import 'package:get/get.dart' as g;
import 'package:notiqo/featuers/options/presentation/views/options_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        if (state is GetNotesSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SafeArea(child: SizedBox())),
                SliverToBoxAdapter(child: CustomMainAppBar(
                  onPressed: () {
                    g.Get.to(() => const OptionsView(),
                        transition: g.Transition.fade,
                        duration: const Duration(milliseconds: 400));
                  },
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
        } else if (state is GetNotesLoading) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SafeArea(child: SizedBox()),
                CustomMainAppBar(
                  onPressed: () {
                    g.Get.to(() => const OptionsView(),
                        transition: g.Transition.fade,
                        duration: const Duration(milliseconds: 400));
                  },
                ),
                Spacer(),
                SizedBox(
                  height: 20,
                ),
                CircularProgressIndicator(
                  color: AppColors.mainColorOfText,
                  backgroundColor: Colors.transparent,
                ),
                Spacer(),
              ],
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SafeArea(child: SizedBox()),
                CustomMainAppBar(
                  onPressed: () {
                    g.Get.to(() => const OptionsView(),
                        transition: g.Transition.fade,
                        duration: const Duration(milliseconds: 400));
                  },
                ),
                Spacer(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'An Error Occured , Try Again',
                  style: TextStyles.font20Regular(context)
                      .copyWith(color: AppColors.mainColorOfText),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
              ],
            ),
          );
        }
      },
    );
  }
}
