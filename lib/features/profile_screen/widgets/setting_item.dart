

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/styles/colors.dart';
import '../../../shared/styles/font_weight_helper.dart';
import '../../../shared/styles/fonts.dart';

class SettingItem extends StatelessWidget{
  final String title,icon;
  final Color? iconColor;
  const SettingItem({
    super.key,
    required this.title,
    required this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Text(
            title,
            style: FontsHelper.workSans(size: 16, weight: FontWeightHelper.medium),
          ),
          const Spacer(),
          SvgPicture.asset(icon, width: 25, height: 25, color: iconColor,)
        ],
      ),
    );
  }

}