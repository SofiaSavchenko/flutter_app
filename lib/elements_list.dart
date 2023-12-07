import 'package:flutter/material.dart';
import 'section_header.dart';
import 'element_of_list.dart';
import 'resources/strings.dart';
import 'resources/images.dart';

class ElementsList extends StatelessWidget {

  const ElementsList(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SectionHeader(title: Strings.transfersLimits, subTitle: Strings.forOperations),

        ElementOfList(image: Images.speedometer, title: Strings.changeLimit, subTitle: Strings.forPaymentsTransfers),

        ElementOfList(image: Images.percentWithoutBack, title: Strings.transfersWithoutCommission, subTitle: Strings.showBalance),

        ElementOfList(image: Images.arrowsForwardBack, title: Strings.informationTariffsLimits),
        
      ],
    );
    
  }
}