
import 'package:flutter/material.dart';
import 'package:get_pay_in/shared/styles/font_weight_helper.dart';
import 'package:get_pay_in/shared/styles/fonts.dart';
import 'package:get_pay_in/shared/widgets/vertical_space.dart';

import '../../../shared/widgets/default_button.dart';

class EditProfile extends StatelessWidget{
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/mikasa.jpeg'),
          ),
          const VerticalSpace(height: 10),
          Text(
            'Mikasa Ackerman',
            style: FontsHelper.workSans(size: 24, weight: FontWeightHelper.bold),
          ),
          const VerticalSpace(height: 8,),
          Text(
            'Good Morning!',
            style: FontsHelper.workSans(),
          ),
          const VerticalSpace(height: 16),
          const DefaultButton(title: 'Edit Profile')
        ],
      ),
    );
  }

}