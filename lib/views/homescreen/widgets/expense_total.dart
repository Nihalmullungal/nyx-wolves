import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/theme/font_theme.dart';

class ExpenseTotal extends StatelessWidget {
  const ExpenseTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Color.fromARGB(25, 0, 0, 0),
          radius: 18,
          child: Icon(
            Icons.arrow_upward,
            color: Colors.red,
            size: 25,
          ),
        ),
        SizedBox(
          width: AppConstants.widthOfScreen(context) * 0.009,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Expense",
              style: FontTheme.incomeStyle,
            ),
            Text(
              "${AppConstants.expenses}.00",
              style: FontTheme.incomeNumberStyle,
            ),
          ],
        )
      ],
    );
  }
}
