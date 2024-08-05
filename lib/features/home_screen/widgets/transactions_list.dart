
import 'package:flutter/material.dart';
import 'package:get_pay_in/features/home_screen/models/transaction_model.dart';
import 'package:get_pay_in/features/home_screen/widgets/row_title.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';

import '../../../shared/widgets/transaction_item.dart';
import '../../../shared/widgets/vertical_space.dart';

class TransactionsList extends StatelessWidget{
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context) {

    List<TransactionModel> list = [
      TransactionModel(
          ColorManager.lightOrange2,
          ColorManager.lightOrange,
          'Adobe Illustrator',
          '-\$ 32.00',
          'Subscription fee',
          'assets/svgs/laptop.svg'
      ),
      TransactionModel(
          ColorManager.lightOrange2,
          ColorManager.lightOrange,
          'Dribble',
          '-\$ 15.00',
          'Subscription fee',
          'assets/svgs/laptop.svg'
      ),
      TransactionModel(
          ColorManager.lightPink2,
          ColorManager.pink,
          'Sony Camera',
          '-\$ 200.00',
          'Subscription fee',
          'assets/svgs/shopping.svg'
      ),
      TransactionModel(
          ColorManager.lightGreen,
          ColorManager.green,
          'Paypal',
          '+\$ 32.00',
          'Salary',
          'assets/svgs/wallet.svg'
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RowTitle(title: 'Transactions'),
        const VerticalSpace(height: 10),
        Text(
          'Today',
          style: FontsHelper.workSans(color: ColorManager.grey),
        ),
        const VerticalSpace(height: 10),
        SizedBox(
          height: 400,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index)=> TransactionItem(transaction: list[index]),
            separatorBuilder: (context,index)=>const VerticalSpace(height: 10),
            itemCount: list.length
          ),
        )
      ],
    );
  }
  
}