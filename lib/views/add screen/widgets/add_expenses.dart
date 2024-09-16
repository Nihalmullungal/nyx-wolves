import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/theme/font_theme.dart';

class AddExpenses extends StatelessWidget {
  const AddExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(top: AppConstants.heightOfScreen(context) * 0.1),
        child: Column(
          children: [
            Text(
              "Add Expenses",
              style: FontTheme.addExpensesStyle,
            ),
            SizedBox(
              height: AppConstants.heightOfScreen(context) * 0.02,
            ),
            AppConstants.customTextField(
                ctx: context, hint: "\$0", isAddExpense: true)
          ],
        ));
  }
}
