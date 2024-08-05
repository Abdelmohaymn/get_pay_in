
import 'package:flutter/material.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';

class DefaultButton extends StatelessWidget{
  final String title;
  const DefaultButton({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(ColorManager.lightBlack),
        overlayColor: WidgetStatePropertyAll(ColorManager.splashColor),
      ),
      child: Text(
        title,
        style: FontsHelper.workSans(color: ColorManager.white),
      ),
    );
  }

}