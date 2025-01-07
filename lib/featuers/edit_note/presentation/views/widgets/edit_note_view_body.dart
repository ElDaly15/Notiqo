import 'package:flutter/material.dart';
import 'package:notiqo/core/widgets/custom_text_field.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_add_note_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
              textEditingController: TextEditingController(
                text: '10 Excellent font packages for Flutter developers',
              ),
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
              textEditingController: TextEditingController(
                text:
                    'The poor girl bore all patiently, and dared not tell her father, who would have rattled her off; for his wife governed him entirely. When she had done her work, she used to go into the chimney-corner, and sit down among cinders and ashes, which made her commonly be called Cinderwench; but the youngest, who was not so rude and uncivil as the eldest, called her Cinderella. However, Cinderella, notwithstanding her mean apparel, was a hundred times handsomer than her sisters, though they were always dressed very richly.It happened that the King\'s son gave a ball, and invited all persons of fashion to it. Our young misses were also invited, for they cut a very grand figure among the quality. They were mightily delighted at this invitation, and wonderfully busy in choosing out such gowns, petticoats, and head-clothes as might become them. This was a new trouble to Cinderella; for it was she who ironed her sisters\' linen, and plaited their ruffles; they talked all day long of nothing but how they should be dressed.',
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
