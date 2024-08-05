
import 'package:flutter/material.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/styles/font_weight_helper.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';
import 'package:get_pay_in/shared/widgets/horizontal_space.dart';

class IncomeItem extends StatelessWidget{
  final IconData icon;
  final Color iconColor;
  final String title;
  final String amount;
  const IncomeItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        const HorizontalSpace(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: FontsHelper.workSans(color: ColorManager.grey,size: 12,weight: FontWeightHelper.medium),
            ),
            Text(
              amount,
              style: FontsHelper.workSans(color: ColorManager.white,size: 16,weight: FontWeightHelper.bold),
            ),
          ],
        ),
      ],
    );
  }

}