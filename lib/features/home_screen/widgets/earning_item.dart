
import 'package:flutter/material.dart';
import 'package:get_pay_in/features/home_screen/models/earning_model.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';

class EarningItem extends StatelessWidget{
  final EarningModel earningModel;
  const EarningItem({
    super.key,
    required this.earningModel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        elevation: 2,
        color: earningModel.backColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: earningModel.color,
                child: Text(
                  earningModel.title[0],
                  style: FontsHelper.workSans(size: 16,weight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              Text(
                earningModel.title,
                style: FontsHelper.workSans(color: Colors.white,size: 12),
              ),
              Text(
                earningModel.amount,
                style: FontsHelper.workSans(color: Colors.white,size: 16, weight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

}