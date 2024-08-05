
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';

import '../../../shared/styles/font_weight_helper.dart';
import '../../../shared/widgets/transaction_item.dart';
import '../../../shared/widgets/vertical_space.dart';
import '../../home_screen/models/transaction_model.dart';

class WalletTransactionsList extends StatelessWidget{
  const WalletTransactionsList({super.key});

  @override
  Widget build(BuildContext context) {

    List<TransactionModel> list = [
      TransactionModel(
          ColorManager.lightOrange2,
          ColorManager.lightOrange,
          'Dribble',
          '-\$ 15.00',
          'Subscription fee',
          'assets/svgs/laptop.svg'
      ),
      TransactionModel(
          ColorManager.lightBlue2,
          ColorManager.darkBlue,
          'House',
          '-\$ 50.00',
          'Saving',
          'assets/svgs/download.svg'
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
          '-\$ 32.00',
          'Salary',
          'assets/svgs/wallet.svg'
      ),
    ];

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Transactions',
                style: FontsHelper.workSans(size: 15, weight: FontWeightHelper.bold),
              ),
              const Spacer(),
              SvgPicture.asset('assets/svgs/filters.svg')
            ],
          ),
          const VerticalSpace(height: 20),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index)=> TransactionItem(transaction: list[index]),
              separatorBuilder: (context,index)=>const VerticalSpace(height: 10),
              itemCount: list.length
            ),
          )
        ],
      ),
    );
  }
  
}