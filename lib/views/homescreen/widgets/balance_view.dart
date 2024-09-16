import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/theme/font_theme.dart';

class BalanceView extends StatelessWidget {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Total Balance", style: FontTheme.totalBalanceStyle),
        Text("\$${AppConstants.income - AppConstants.expenses}.00",
            style: FontTheme.totalBalanceNumberStyle),
      ],
    );
  }
}
