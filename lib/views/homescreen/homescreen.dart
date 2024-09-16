import 'package:flutter/material.dart';
import 'package:nyx_wolves/theme/constants.dart';
import 'package:nyx_wolves/views/add%20screen/add_screen.dart';
import 'package:nyx_wolves/views/homescreen/widgets/body_of_home_screen.dart';
import 'package:nyx_wolves/views/homescreen/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          gradient: AppConstants.buttonBgColor,
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AddScreen(),
              ));
            },
            elevation: 0,
            backgroundColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: BottomNavigationBar(
            selectedItemColor: const Color.fromARGB(255, 163, 169, 193),
            iconSize: 40,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(Icons.grid_view_rounded),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromARGB(255, 163, 169, 193),
                      child: Icon(
                        Icons.equalizer,
                        color: Colors.white,
                        size: 20,
                      )),
                  label: "")
            ]),
      ),
      body: const BodyOfHomeScreen(),
    );
  }
}
