import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/theme/font_theme.dart';

class CutsomListTile extends StatelessWidget {
  const CutsomListTile({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final transList = AppConstants.transactionList;
    final screenHeight = AppConstants.heightOfScreen(context);
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: screenHeight * 0.09,
      padding: EdgeInsets.only(left: screenHeight * 0.008),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: screenHeight * 0.009),
            child: Row(children: [
              Padding(
                padding: EdgeInsets.only(right: screenHeight * 0.01),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: transList[index][1],
                  child: transList[index][2],
                ),
              ),
              Text(
                transList[index][3],
                style: FontTheme.listViewNameStyle,
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(right: screenHeight * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                transList[index][0] == "Expense"
                    ? Text(
                        "-\$${transList[index][4]}.00",
                        style: FontTheme.transactionNumberStyle,
                      )
                    : Text(
                        "+\$${transList[index][4]}.00",
                        style: FontTheme.transactionNumberStyle,
                      ),
                index < transList.length ~/ 2
                    ? Text(
                        "Today",
                        style: FontTheme.transactionDateStyle,
                      )
                    : Text(
                        "Yesterday",
                        style: FontTheme.transactionDateStyle,
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
