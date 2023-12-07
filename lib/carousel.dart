import 'package:flutter/material.dart';
import 'package:flutter_app/section_header.dart';
import 'package:flutter_app/custom_card.dart';
import 'resources/strings.dart';
import 'resources/images.dart';

class CardData {
  final String image;
  final String title;
  final String subTitle;
  final String text;

  CardData({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.text,
  });
}

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CardData> cardData = [
      CardData(
        image: Images.flag,
        title: Strings.sberPrime,
        subTitle: Strings.payment,
        text: Strings.moneyPerMonth,
      ),
      CardData(
        image: Images.percent,
        title: Strings.transfersLimits,
        subTitle: Strings.autoRenewal,
        text: Strings.moneyPerMonth,
      ),
    ];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SectionHeader(
          title: Strings.connected,
          subTitle: Strings.payment),
      const SizedBox(height: 20),
      SizedBox(
        height: 140,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
            height: 130,
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CustomCard(
                  image: cardData[index].image,
                  title: cardData[index].title,
                  subTitle: cardData[index].subTitle,
                  text: cardData[index].text),
            );
          },
        ),
          )
          
        )
      )
    ]);
  }
}
