import 'package:flutter/material.dart';
import 'package:flutter_app/chip_list.dart';
import 'section_header.dart';
import 'resources/strings.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            title: Strings.interests,
            subTitle: Strings.storiesSuggestions,
          ),
          SizedBox(height: 16),
          ChipList(),
        ],
    );
  }
}
