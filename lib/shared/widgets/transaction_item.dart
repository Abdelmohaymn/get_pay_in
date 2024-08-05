
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_pay_in/features/home_screen/models/transaction_model.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';
import 'package:get_pay_in/shared/widgets/horizontal_space.dart';

class TransactionItem extends StatelessWidget{
  final TransactionModel transaction;
  const TransactionItem({super.key,required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManager.white
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: transaction.backColor,
            child: SvgPicture.asset(transaction.icon,color: transaction.color, width: 25, height: 25,),
          ),
          const HorizontalSpace(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.title,
                style: FontsHelper.workSans(weight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                transaction.content,
                style: FontsHelper.workSans(size: 12, color: ColorManager.grey),
              ),
            ],
          ),
          const Spacer(),
          Text(
            transaction.amount,
            style: FontsHelper.workSans(
              size: 12,
              color: transaction.amount[0]=='-'?ColorManager.red:ColorManager.green,
              weight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

}