import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String text;

  const CustomCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                SizedBox(width: 36, height: 36, child: Image.asset(image)),
                const SizedBox(width: 12),
                Text(title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w500,
                    ))
              ]),
              const SizedBox(height: 22),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  subTitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.55),
                    fontSize: 14,
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
