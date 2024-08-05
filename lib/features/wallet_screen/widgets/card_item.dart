
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_pay_in/features/wallet_screen/models/card_model.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/styles/font_weight_helper.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';
import 'package:get_pay_in/shared/widgets/horizontal_space.dart';
import 'package:get_pay_in/shared/widgets/vertical_space.dart';

class CardItem extends StatelessWidget{
  final CardModel card;
  const CardItem({super.key,required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 300,
      decoration: BoxDecoration(
        color: card.backColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Balance',
                          style: FontsHelper.workSans(weight: FontWeightHelper.medium),
                        ),
                        Text(
                          card.amount,
                          style: FontsHelper.workSans(size: 20,weight: FontWeightHelper.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(card.type),
                  ],
                ),
                const VerticalSpace(height: 20),
                Row(
                  children: [
                    Text(
                      card.pass1,
                      style: FontsHelper.workSans(),
                    ),
                    const HorizontalSpace(width: 10),
                    Text(
                      '....',
                      style: FontsHelper.workSans(size: 16,weight: FontWeightHelper.bold),
                    ),
                    const HorizontalSpace(width: 10),
                    Text(
                      '....',
                      style: FontsHelper.workSans(size: 16,weight: FontWeightHelper.bold),
                    ),
                    const HorizontalSpace(width: 10),
                    Text(
                      card.pass2,
                      style: FontsHelper.workSans(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 60,
            width: 300,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: ColorManager.lightBlack,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
              )
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Name',
                      style: FontsHelper.workSans(color: ColorManager.grey,size: 12,weight: FontWeightHelper.medium),
                    ),
                    const Spacer(),
                    Text(
                      'Exp',
                      style: FontsHelper.workSans(color: ColorManager.grey,size: 12,weight: FontWeightHelper.medium),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Mikasa',
                      style: FontsHelper.workSans(color: ColorManager.white,weight: FontWeightHelper.bold,),
                    ),
                    const Spacer(),
                    Text(
                      card.exp,
                      style: FontsHelper.workSans(color: ColorManager.white,weight: FontWeightHelper.bold,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}