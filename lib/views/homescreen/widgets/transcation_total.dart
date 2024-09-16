import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/views/homescreen/widgets/expense_total.dart';

import 'package:nyx_wolves/views/homescreen/widgets/income_total.dart';

class TranscationTotal extends StatelessWidget {
  const TranscationTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstants.widthOfScreen(context) * 0.07,
          vertical: AppConstants.heightOfScreen(context) * 0.027),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IncomeTotal(),
          ExpenseTotal(),
        ],
      ),
    );
  }
}
