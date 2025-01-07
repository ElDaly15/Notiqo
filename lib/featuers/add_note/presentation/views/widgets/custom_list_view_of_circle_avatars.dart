import 'package:flutter/material.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_circle_of_circle_avatar.dart';

class CustomListViewOfCirlceAvatarOfColors extends StatefulWidget {
  const CustomListViewOfCirlceAvatarOfColors({super.key});

  @override
  State<CustomListViewOfCirlceAvatarOfColors> createState() =>
      _CustomListViewOfCirlceAvatarOfColorsState();
}

class _CustomListViewOfCirlceAvatarOfColorsState
    extends State<CustomListViewOfCirlceAvatarOfColors> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: CustomColorCircleAvatar(
                        color: Colors.white,
                        isActive: index == currentIndex,
                      ),
                    ),
                  )
                : index == 9
                    ? Padding(
                        padding: const EdgeInsets.only(right: 16, left: 8),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: CustomColorCircleAvatar(
                            color: Colors.white,
                            isActive: index == currentIndex,
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: CustomColorCircleAvatar(
                            color: Colors.white,
                            isActive: index == currentIndex,
                          ),
                        ),
                      );
          }),
    );
  }
}
