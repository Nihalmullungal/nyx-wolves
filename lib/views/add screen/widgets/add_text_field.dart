import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';

class AddTextField extends StatelessWidget {
  const AddTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppConstants.heightOfScreen(context) * 0.05,
        bottom: AppConstants.heightOfScreen(context) * 0.26,
      ),
      child: Column(
          children: List.generate(
        AppConstants.listOfItems.length,
        (index) => Padding(
          padding: EdgeInsets.only(
              bottom: AppConstants.heightOfScreen(context) * 0.03),
          child: AppConstants.customTextField(
              ctx: context,
              isAddExpense: false,
              hint: AppConstants.listOfItems.keys.elementAt(index),
              leading: AppConstants.listOfItems.values.elementAt(index)),
        ),
      )),
    );
  }
}
