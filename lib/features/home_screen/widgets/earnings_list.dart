import 'package:flutter/material.dart';
import 'package:get_pay_in/features/home_screen/models/earning_model.dart';
import 'package:get_pay_in/features/home_screen/widgets/earning_item.dart';
import 'package:get_pay_in/features/home_screen/widgets/row_title.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/widgets/vertical_space.dart';

import '../../../shared/widgets/horizontal_space.dart';

class EarningsList extends StatelessWidget{
  const EarningsList({super.key});

  @override
  Widget build(BuildContext context) {

    List<EarningModel> list = [
      EarningModel(
        ColorManager.orange,
        ColorManager.lightPink,
        'Upwork',
        '\$ 3,000'
      ),
      EarningModel(
          ColorManager.pink,
          ColorManager.lightPink,
          'Freepik',
          '\$ 3,000'
      ),
      EarningModel(
          ColorManager.blue,
          ColorManager.lightBlue,
          'Facebook',
          '\$ 2,000'
      ),
      EarningModel(
          ColorManager.orange,
          ColorManager.lightPink,
          'Instagram',
          '\$ 1,000'
      ),
    ];

    return Column(
      children: [
        const RowTitle(title: 'Earnings'),
        const VerticalSpace(height: 10),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>EarningItem(earningModel: list[index]),
            separatorBuilder: (context,index)=>const HorizontalSpace(width: 10),
            itemCount: list.length
          ),
        )
      ],
    );
  }

}