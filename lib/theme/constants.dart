import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/font_theme.dart';

class AppConstants {
  AppConstants();

  static int income = 1000, expenses = 505;
  static double heightOfScreen(BuildContext ctx) {
    return MediaQuery.of(ctx).size.height;
  }

  static double widthOfScreen(BuildContext ctx) {
    return MediaQuery.of(ctx).size.width;
  }

  static Padding customTextField(
          {required BuildContext ctx,
          required bool isAddExpense,
          required String hint,
          Widget? leading}) =>
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: isAddExpense
                ? heightOfScreen(ctx) * 0.06
                : heightOfScreen(ctx) * 0.04),
        child: Material(
          shape: isAddExpense
              ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
              : const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
          elevation: 20,
          child: TextFormField(
            textAlign: isAddExpense ? TextAlign.center : TextAlign.left,
            decoration: InputDecoration(
                prefixIcon: leading,
                contentPadding: const EdgeInsets.all(20),
                hintText: hint,
                hintStyle: isAddExpense
                    ? FontTheme.hintStyleBig
                    : FontTheme.hintStyleSmall,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: isAddExpense
                        ? const BorderRadius.all(Radius.circular(40))
                        : BorderRadius.circular(8))),
          ),
        ),
      );
  static Map<String, Widget> listOfItems = {
    "Category": const Icon(Icons.grid_view, color: Colors.grey),
    "Note": const Icon(Icons.description, color: Colors.grey),
    "Today": const Icon(Icons.date_range, color: Colors.grey)
  };
  static List<List<dynamic>> transactionList = [
    [
      "Expense",
      Colors.amber,
      const Icon(
        Icons.lunch_dining,
        color: Colors.white,
      ),
      "Food",
      45
    ],
    [
      "Expense",
      Colors.purple,
      const Icon(
        Icons.local_mall,
        color: Colors.white,
      ),
      "Shopping",
      150
    ],
    [
      "Expense",
      Colors.red,
      const Icon(
        Icons.movie,
        color: Colors.white,
      ),
      "Entertainment",
      60
    ],
    [
      "Expense",
      Colors.teal,
      const Icon(
        Icons.flight,
        color: Colors.white,
      ),
      "Travel",
      250
    ],
    [
      "Income",
      Colors.green,
      const Icon(
        Icons.payments_outlined,
        color: Colors.white,
      ),
      "Salary",
      1000
    ],
  ];

  static const LinearGradient bgColor = LinearGradient(
    colors: [
      Color.fromARGB(255, 36, 160, 234),
      Color.fromARGB(255, 185, 102, 252),
      Color.fromARGB(255, 247, 119, 175),
      Color.fromARGB(255, 255, 132, 116),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient buttonBgColor = LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 132, 116),
      Color.fromARGB(255, 247, 119, 175),
      Color.fromARGB(255, 185, 102, 252),
      Color.fromARGB(255, 36, 160, 234),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
