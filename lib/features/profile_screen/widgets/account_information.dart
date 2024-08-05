
import 'package:flutter/material.dart';
import 'package:get_pay_in/features/profile_screen/widgets/earning_item.dart';

import '../../../shared/styles/colors.dart';
import '../../../shared/styles/font_weight_helper.dart';
import '../../../shared/styles/fonts.dart';
import '../../../shared/widgets/horizontal_space.dart';
import '../../../shared/widgets/transaction_item.dart';
import '../../../shared/widgets/vertical_space.dart';
import '../../home_screen/models/earning_model.dart';
import '../../home_screen/models/transaction_model.dart';
import 'info_card.dart';

class AccountInformation extends StatelessWidget{
  const AccountInformation({super.key});

  @override
  Widget build(BuildContext context) {

    List<TransactionModel> transactions = [
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
    List<EarningModel> earnings = [
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Account Information',
          style: FontsHelper.workSans(size: 18, weight: FontWeightHelper.bold),
        ),
        const VerticalSpace(height: 10),
        const InfoCard(title: 'Total Balance', subTitle: '\$25,000.40',),
        const VerticalSpace(height: 10),
        ListTile(
          title: Text(
            'Recent Transactions',
            style: FontsHelper.workSans(size: 16, weight: FontWeightHelper.medium),
          ),
          subtitle: SizedBox(
            height: 300,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index)=> TransactionItem(transaction: transactions[index]),
                separatorBuilder: (context,index)=>const VerticalSpace(height: 10),
                itemCount: transactions.length
            ),
          ),
        ),
        const VerticalSpace(height: 10),
        ListTile(
          title: Text(
            'Earnings',
            style: FontsHelper.workSans(size: 16, weight: FontWeightHelper.medium),
          ),
          subtitle: SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>EarningItem(earningModel: earnings[index]),
                separatorBuilder: (context,index)=>const HorizontalSpace(width: 10),
                itemCount: earnings.length
            ),
          ),
        ),
      ],
    );
  }

}