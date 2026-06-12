import 'package:flutter/material.dart';
import 'package:flutter_166/Eid_Practices/mod_12/cls_3.dart';
import 'package:flutter_166/module_10/class_1.dart';
import 'package:flutter_166/module_13/class_2.dart';
import 'package:flutter_166/module_13/class_3.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int selectedIndex = 0;

  List<Widget> screens = [
    Module_13_Class_2(),
    Module_13_Class_3(),
    Module_10Class_1(),
    Mod_12_Cls_3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: screens[selectedIndex]),

      bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (int index){
            selectedIndex = index;
            setState(() {

            });
          },
          destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.message), label: 'Inbox'),
        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ]),
    );
  }
}
