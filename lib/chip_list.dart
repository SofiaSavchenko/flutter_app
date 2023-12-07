import 'package:flutter/material.dart';
import 'custom_chip.dart';
import 'resources/strings.dart';

class ChipList extends StatelessWidget {
  const ChipList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          CustomChip(text: Strings.food),
          CustomChip(text: Strings.selfDevelopment),
          CustomChip(text: Strings.technologies),
          CustomChip(text: Strings.home),
          CustomChip(text: Strings.leisure),
          CustomChip(text: Strings.takingCare),
          CustomChip(text: Strings.science)
        ],
      ),
    );
  }
}
