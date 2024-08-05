

import 'package:flutter/material.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'package:get_pay_in/shared/styles/font_weight_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsHelper{
  static TextStyle workSans({
      Color color=ColorManager.lightBlack,
      double size=14.0,
      FontWeight weight=FontWeightHelper.regular
    }){
    return GoogleFonts.workSans(
      textStyle: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight
      )
    );
  }
}