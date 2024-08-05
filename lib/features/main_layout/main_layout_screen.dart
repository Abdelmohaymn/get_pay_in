
import 'package:flutter/material.dart';
import 'package:get_pay_in/features/main_layout/main_Layout_helper.dart';
import 'package:get_pay_in/shared/styles/colors.dart';

class MainLayoutScreen extends StatefulWidget{
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int bottomNavIndex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainLayoutHelper.screens[bottomNavIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: bottomNavIndex,
          items: MainLayoutHelper.bottomItems,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: ColorManager.white,
          onTap: (index){
            setState(() {
              bottomNavIndex=index;
            });
          },
        ),
      ),
      backgroundColor: ColorManager.background,
    );
  }
}