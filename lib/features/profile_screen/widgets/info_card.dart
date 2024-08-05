
import 'package:flutter/material.dart';
import 'package:get_pay_in/shared/styles/colors.dart';

import '../../../shared/styles/font_weight_helper.dart';
import '../../../shared/styles/fonts.dart';

class InfoCard extends StatelessWidget{
  final String title,subTitle;
  const InfoCard({
    super.key,
    required this.title,
    required this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        title: Text(
          title,
          style: FontsHelper.workSans(size: 16, weight: FontWeightHelper.medium),
        ),
        subtitle: Text(
          subTitle,
          style: FontsHelper.workSans(),
        ),
      ),
    );
  }

}