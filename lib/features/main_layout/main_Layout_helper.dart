
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_pay_in/features/profile_screen/profile_page.dart';
import 'package:get_pay_in/features/wallet_screen/wallet_page.dart';
import 'package:get_pay_in/shared/styles/colors.dart';


import '../home_screen/home_page.dart';

class MainLayoutHelper{

  static List<Widget> screens = [
    const HomePage(),
    const WalletPage(),
    const ProfilePage(),
  ];

  static List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svgs/home.svg', color: ColorManager.grey, width: 25, height: 25,),
      activeIcon: SvgPicture.asset('assets/svgs/home.svg', width: 25, height: 25,),
      label: 'Home'
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svgs/wallet2.svg', color: ColorManager.grey, width: 25, height: 25,),
      activeIcon: SvgPicture.asset('assets/svgs/wallet2.svg', width: 25, height: 25,),
      label: 'Wallet'
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svgs/profile.svg', color: ColorManager.grey, width: 25, height: 25,),
      activeIcon: SvgPicture.asset('assets/svgs/profile.svg', width: 25, height: 25,),
      label: 'Profile'
    ),
  ];

}