import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/views/homescreen/widgets/balance_card.dart';
import 'package:nyx_wolves/views/homescreen/widgets/transaction_details.dart';

class BodyOfHomeScreen extends StatelessWidget {
  const BodyOfHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppConstants.heightOfScreen(context) * 0.04,
            vertical: AppConstants.widthOfScreen(context) * 0.04),
        child: Column(
          children: const [BalanceCard(), TransactionDetails()],
        ),
      ),
    );
  }
}
