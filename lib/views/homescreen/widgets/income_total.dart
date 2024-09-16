import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/theme/font_theme.dart';

class IncomeTotal extends StatelessWidget {
  const IncomeTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 18,
          backgroundColor: Color.fromARGB(25, 0, 0, 0),
          child: Icon(
            Icons.arrow_downward,
            color: Colors.green,
            size: 20,
          ),
        ),
        SizedBox(
          width: AppConstants.widthOfScreen(context) * 0.009,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Income",
              style: FontTheme.incomeStyle,
            ),
            Text(
              "${AppConstants.income}.000",
              style: FontTheme.incomeNumberStyle,
            ),
          ],
        )
      ],
    );
  }
}
