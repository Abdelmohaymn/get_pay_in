
import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';
import '../../../shared/styles/font_weight_helper.dart';
import '../../../shared/styles/fonts.dart';

class RowTitle extends StatelessWidget{
  final String title;
  const RowTitle({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: FontsHelper.workSans(size: 15, weight: FontWeightHelper.bold),
        ),
        const Spacer(),
        TextButton(
          onPressed: (){},
          child: Text(
            'See All',
            style: FontsHelper.workSans(color: ColorManager.blue,size: 12,weight: FontWeightHelper.bold),
          ),
        )
      ],
    );
  }

}