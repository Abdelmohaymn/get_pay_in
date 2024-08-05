
import 'package:flutter/material.dart';
import 'package:get_pay_in/features/wallet_screen/widgets/cards_list.dart';
import 'package:get_pay_in/features/wallet_screen/widgets/wallet_profile_header.dart';
import 'package:get_pay_in/features/wallet_screen/widgets/wallet_transactions_list.dart';

import '../../shared/widgets/vertical_space.dart';

class WalletPage extends StatelessWidget{
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            WalletProfileHeader(),
            VerticalSpace(height: 20),
            CardsList(),
            VerticalSpace(height: 30),
            WalletTransactionsList()
          ],
        ),
      ),
    );
  }

}