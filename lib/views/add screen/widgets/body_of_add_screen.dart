import 'package:flutter/material.dart';
import 'package:nyx_wolves/views/add%20screen/widgets/add_button.dart';
import 'package:nyx_wolves/views/add%20screen/widgets/add_expenses.dart';
import 'package:nyx_wolves/views/add%20screen/widgets/add_text_field.dart';

class BodyOfAddScreen extends StatelessWidget {
  const BodyOfAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [AddExpenses(), AddTextField(), AddButton()],
      ),
    );
  }
}
