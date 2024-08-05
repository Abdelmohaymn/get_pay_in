
import 'package:flutter/material.dart';
import 'package:get_pay_in/shared/styles/colors.dart';
import 'features/main_layout/main_layout_screen.dart';

class PayApp extends StatelessWidget {
  const PayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const ScrollBehavior().copyWith(scrollbars: false),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          primary: ColorManager.lightBlack,
          seedColor: ColorManager.lightBlack
        ),
        useMaterial3: true,
      ),
      home: const MainLayoutScreen(),
    );
  }
}

