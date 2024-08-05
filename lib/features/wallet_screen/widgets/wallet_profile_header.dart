
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/styles/colors.dart';
import '../../../shared/styles/font_weight_helper.dart';
import '../../../shared/widgets/circular_profile.dart';
import '../../../shared/widgets/horizontal_space.dart';

class WalletProfileHeader extends StatelessWidget{
  const WalletProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircularProfile(),
        const HorizontalSpace(width: 10),
        Expanded(
          child: Text(
            'Wallet',
            style: GoogleFonts.workSans(
                textStyle: const TextStyle(
                  color: ColorManager.lightBlack,
                  fontWeight: FontWeightHelper.bold
                )
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SvgPicture.asset('assets/svgs/3dots.svg',width: 30, height: 30,),
      ],
    );
  }

}