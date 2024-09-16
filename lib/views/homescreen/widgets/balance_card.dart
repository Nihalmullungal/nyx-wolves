import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/views/homescreen/widgets/balance_view.dart';
import 'package:nyx_wolves/views/homescreen/widgets/transcation_total.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final heightOfScreen = AppConstants.heightOfScreen(context);
    final widthOfScreen = AppConstants.heightOfScreen(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: widthOfScreen * 0.04),
      height: AppConstants.heightOfScreen(context) * 0.27,
      decoration: const BoxDecoration(
          gradient: AppConstants.bgColor,
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Padding(
        padding: EdgeInsets.only(top: heightOfScreen * 0.05),
        child: const Column(
          children: [BalanceView(), TranscationTotal()],
        ),
      ),
    );
  }
}
