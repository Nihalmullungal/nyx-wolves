import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppConstants.heightOfScreen(context) * 0.04),
      child: Container(
        height: AppConstants.heightOfScreen(context) * 0.05,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: AppConstants.bgColor,
            borderRadius: BorderRadius.circular(5)),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent),
            child: const Text(
              "Save",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
