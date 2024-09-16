import 'package:flutter/material.dart';
import 'package:nyx_wolves/views/add%20screen/widgets/body_of_add_screen.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close))
        ],
      ),
      body: const BodyOfAddScreen(),
    );
  }
}
