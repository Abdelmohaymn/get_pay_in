
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/styles/colors.dart';
import '../../../shared/styles/font_weight_helper.dart';
import '../../../shared/styles/fonts.dart';
import '../../../shared/widgets/circular_profile.dart';
import '../../../shared/widgets/horizontal_space.dart';

class ProfileHeader extends StatelessWidget{
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircularProfile(),
        const HorizontalSpace(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning!',
              style: GoogleFonts.workSans(
                  textStyle: const TextStyle(
                      fontSize: 12,
                      color: ColorManager.lightBlack
                  )
              ),
            ),
            Text(
              'Mikasa',
              style: FontsHelper.workSans(weight: FontWeightHelper.bold
              ),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset('assets/svgs/notification.svg'),
      ],
    );
  }

}