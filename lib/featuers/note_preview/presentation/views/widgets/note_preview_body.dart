import 'package:flutter/material.dart';
import 'package:notiqo/core/utils/app_colors.dart';
import 'package:notiqo/core/utils/app_styles.dart';
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
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              '10 Excellent font packages for Flutter developers',
              style: TextStyles.font24SemiBold(context)
                  .copyWith(color: AppColors.mainColorOfText, fontSize: 28),
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Text(
                  'May 21,2025',
                  style: TextStyles.font18Medium(context)
                      .copyWith(color: AppColors.secondaryColorOfText),
                ),
                const Spacer(),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      Icons.copy,
                      color: AppColors.mainColorOfText,
                    ))
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'The poor girl bore all patiently, and dared not tell her father, who would have rattled her off; for his wife governed him entirely. When she had done her work, she used to go into the chimney-corner, and sit down among cinders and ashes, which made her commonly be called Cinderwench; but the youngest, who was not so rude and uncivil as the eldest, called her Cinderella. However, Cinderella, notwithstanding her mean apparel, was a hundred times handsomer than her sisters, though they were always dressed very richly.It happened that the King\'s son gave a ball, and invited all persons of fashion to it. Our young misses were also invited, for they cut a very grand figure among the quality. They were mightily delighted at this invitation, and wonderfully busy in choosing out such gowns, petticoats, and head-clothes as might become them. This was a new trouble to Cinderella; for it was she who ironed her sisters\' linen, and plaited their ruffles; they talked all day long of nothing but how they should be dressed.',
              style: TextStyles.font20Regular(context)
                  .copyWith(color: AppColors.mainColorOfText),
            ),
          ),
        ],
      ),
    );
  }
}
