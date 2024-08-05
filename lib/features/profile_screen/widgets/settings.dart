
import 'package:flutter/material.dart';
import 'package:get_pay_in/features/profile_screen/widgets/setting_item.dart';
import 'package:get_pay_in/shared/styles/colors.dart';

import '../../../shared/styles/font_weight_helper.dart';
import '../../../shared/styles/fonts.dart';
import '../../../shared/widgets/vertical_space.dart';

class Settings extends StatelessWidget{
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Settings',
          style: FontsHelper.workSans(size: 18, weight: FontWeightHelper.bold),
        ),
        const VerticalSpace(height: 10),
        const SettingItem(title: 'Notifications', icon: 'assets/svgs/notification.svg'),
        const VerticalSpace(height: 10),
        const SettingItem(title: 'Security', icon: 'assets/svgs/security.svg', iconColor: ColorManager.blue,),
        const VerticalSpace(height: 10),
        const SettingItem(title: 'Payment Methods', icon: 'assets/svgs/wallet.svg', iconColor: ColorManager.green,),

      ],
    );
  }

}