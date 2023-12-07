import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String subTitle;

  const SectionHeader({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),  
    child: 
    Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 343,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 343,
            child: Text(
              subTitle,
              style: TextStyle(
                color: Colors.black.withOpacity(0.55),
                fontSize: 14,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
    ),
    );
  }
}
