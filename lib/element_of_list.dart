import 'package:flutter/material.dart';
import 'resources/images.dart';

class ElementOfList extends StatelessWidget {
  final String image;
  final String title;
  final String? subTitle;

  const ElementOfList({
    Key? key,
    required this.image,
    required this.title,
    this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
      child: SizedBox(
        child: Row(
          children: [
            SizedBox(width: 36, height: 36, child: Image.asset(image)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 263,
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'SFProText',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (subTitle != null) const SizedBox(height: 2),
                            Expanded(
                              child: Text(
                                subTitle ?? '',
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
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 48,
                          height: 40,
                          child: Image.asset(Images.rightS),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
