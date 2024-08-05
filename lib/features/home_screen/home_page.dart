
import 'package:flutter/material.dart';
import 'package:get_pay_in/features/home_screen/widgets/balance_card.dart';
import 'package:get_pay_in/features/home_screen/widgets/earnings_list.dart';
import 'package:get_pay_in/features/home_screen/widgets/in_out_card.dart';
import 'package:get_pay_in/features/home_screen/widgets/profile_header.dart';
import 'package:get_pay_in/features/home_screen/widgets/transactions_list.dart';
import 'package:get_pay_in/shared/widgets/vertical_space.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),
              VerticalSpace(height: 20),
              BalanceCard(),
              VerticalSpace(height: 10),
              InOutCard(),
              VerticalSpace(height: 20),
              EarningsList(),
              VerticalSpace(height: 20),
              TransactionsList(),
            ],
          ),
        ),
      ),
    );
  }

}