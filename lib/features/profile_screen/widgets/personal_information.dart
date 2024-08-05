
import 'package:flutter/material.dart';
import 'package:get_pay_in/shared/styles/font_weight_helper.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';
import 'package:get_pay_in/shared/widgets/vertical_space.dart';

import 'info_card.dart';

class PersonalInformation extends StatelessWidget{
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Personal Information',
          style: FontsHelper.workSans(size: 18, weight: FontWeightHelper.bold),
        ),
        const VerticalSpace(height: 10),
        const InfoCard(title: 'Email', subTitle: 'mikasa@example.com',),
        const VerticalSpace(height: 10),
        const InfoCard(title: 'Phone', subTitle: '+201234567890',),
        const VerticalSpace(height: 10),
        const InfoCard(title: 'Address', subTitle: '123 Main Street, City, Country',),
      ],
    );
  }

}