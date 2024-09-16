import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/theme/font_theme.dart';
import 'package:nyx_wolves/views/homescreen/widgets/cutsom_list_tile.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = AppConstants.heightOfScreen(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction",
              style: FontTheme.appBarSubTitle,
            ),
            Text("View All", style: FontTheme.appBarTitle),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Material(
                  elevation: 10,
                  shape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: CutsomListTile(index: index));
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: screenHeight * 0.03,
              );
            },
            itemCount: AppConstants.transactionList.length)
      ],
    );
  }
}
