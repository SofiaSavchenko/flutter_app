import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String text;

  const CustomChip({Key? key, required this.text, t}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        label: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'SFProText',
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.black.withOpacity(0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: const BorderSide(color: Colors.white),
        ));
  }
}
