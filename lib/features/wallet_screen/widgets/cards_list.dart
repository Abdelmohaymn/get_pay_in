
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_pay_in/features/wallet_screen/models/card_model.dart';
import 'package:get_pay_in/features/wallet_screen/widgets/card_item.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/widgets/horizontal_space.dart';

class CardsList extends StatelessWidget{
  const CardsList({super.key});

  @override
  Widget build(BuildContext context) {

    List<CardModel> cards = [
      CardModel(
        ColorManager.white,
        '\$25,000.40',
        '1234',
        '3456',
        '09/23',
        'assets/svgs/visa.svg',
      ),
      CardModel(
        ColorManager.lightOrange,
        '\$22,000.00',
        '1098',
        '4567',
        '12/25',
        'assets/svgs/visa.svg',
      ),
      CardModel(
        ColorManager.lightBlue,
        '\$20,000.91',
        '5438',
        '3452',
        '07/26',
        'assets/svgs/visa.svg',
      ),
    ];

    return Row(
      children: [
        SizedBox(
          width: 30,
          height: 180,
          child: DottedBorder(
            strokeWidth: 2.5,
            borderType: BorderType.RRect,
            color: ColorManager.lightBlack,
            radius: const Radius.circular(8),
            dashPattern: const [10,5],
            child: Container(
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: const Center(child: Icon(CupertinoIcons.plus_circle_fill,color: ColorManager.lightBlack,))
            )
          ),
        ),
        const HorizontalSpace(width: 20),
        Expanded(
          child: SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=> CardItem(card: cards[index]),
              separatorBuilder: (context,index)=> const HorizontalSpace(width: 20),
              itemCount: cards.length
            ),
          ),
        )
      ],
    );
  }

}