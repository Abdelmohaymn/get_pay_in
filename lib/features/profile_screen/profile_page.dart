import 'package:flutter/material.dart';
import 'package:get_pay_in/features/profile_screen/widgets/account_information.dart';
import 'package:get_pay_in/features/profile_screen/widgets/edit_profile.dart';
import 'package:get_pay_in/features/profile_screen/widgets/personal_information.dart';
import 'package:get_pay_in/features/profile_screen/widgets/settings.dart';
import 'package:get_pay_in/shared/widgets/default_button.dart';
import 'package:get_pay_in/shared/widgets/vertical_space.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EditProfile(),
            VerticalSpace(height: 24),
            PersonalInformation(),
            VerticalSpace(height: 24),
            AccountInformation(),
            VerticalSpace(height: 24),
            Settings(),
            VerticalSpace(height: 24),
            Center(
              child: DefaultButton(title: 'Log Out')
            ),
          ],
        ),
      ),
    );
  }
}
