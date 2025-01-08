import 'package:flutter/material.dart';
import 'package:notiqo/featuers/add_note/presentation/views/widgets/custom_circle_of_circle_avatar.dart';

class CustomListViewOfCirlceAvatarOfColors extends StatefulWidget {
  const CustomListViewOfCirlceAvatarOfColors(
      {super.key, required this.colorCallBack});
  final void Function(int color) colorCallBack;

  @override
  State<CustomListViewOfCirlceAvatarOfColors> createState() =>
      _CustomListViewOfCirlceAvatarOfColorsState();
}

class _CustomListViewOfCirlceAvatarOfColorsState
    extends State<CustomListViewOfCirlceAvatarOfColors> {
  int currentIndex = 0;
  final List<Color> colors = [
    Color(0xffCACF85),
    Color(0xff8CBA80),
    Color(0xff658E9C),
    Color(0xff4D5382),
    Color(0xff514663),
    Color(0xffE1B07E),
    Color(0xffE5BE9E),
    Color(0xff361D2E),
    Color(0xff660000),
    Color(0xffFF9000),
    Color(0xff2E86AB),
    Color(0xffF24236),
    Color(0xff564138),
    Color(0xff82816D),
    Color(0xff1B2D2A),
    Color(0xffB6FFA1),
    Color(0xff00FF9C),
  ];
  final List<int> colorsCodes = [
    0xffCACF85,
    0xff8CBA80,
    0xff658E9C,
    0xff4D5382,
    0xff514663,
    0xffE1B07E,
    0xffE5BE9E,
    0xff361D2E,
    0xff660000,
    0xffFF9000,
    0xff2E86AB,
    0xffF24236,
    0xff564138,
    0xff82816D,
    0xff1B2D2A,
    0xffB6FFA1,
    0xff00FF9C
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                          widget.colorCallBack(colorsCodes[index]);
                        });
                      },
                      child: CustomColorCircleAvatar(
                        color: colors[index],
                        isActive: index == currentIndex,
                      ),
                    ),
                  )
                : index == colors.length - 1
                    ? Padding(
                        padding: const EdgeInsets.only(right: 16, left: 8),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                              widget.colorCallBack(colorsCodes[index]);
                            });
                          },
                          child: CustomColorCircleAvatar(
                            color: colors[index],
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
                              widget.colorCallBack(colorsCodes[index]);
                            });
                          },
                          child: CustomColorCircleAvatar(
                            color: colors[index],
                            isActive: index == currentIndex,
                          ),
                        ),
                      );
          }),
    );
  }
}
