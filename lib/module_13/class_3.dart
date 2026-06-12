import 'package:flutter/material.dart';
import 'package:flutter_166/Eid_Practices/mod_11/cls_2.dart';
import 'package:flutter_166/module_10/class_1.dart';
import 'package:flutter_166/module_10/class_2.dart';

class Module_13_Class_3 extends StatefulWidget {
  const Module_13_Class_3({super.key});

  @override
  State<Module_13_Class_3> createState() => _Module_13_Class_3State();
}

class _Module_13_Class_3State extends State<Module_13_Class_3> with SingleTickerProviderStateMixin {

  late TabController _tabletController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabletController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar',style: TextStyle(fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.red[100],

        bottom: TabBar(
          indicator: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(10),
          ),
            labelColor: Colors.white,
            indicatorPadding: EdgeInsets.all(1),
            unselectedLabelColor: Colors.green,
            
            controller: _tabletController,
            tabs: [

          Tab(icon: Icon(Icons.home),text: 'Home',),
          Tab(icon: Icon(Icons.favorite_rounded),text: 'Favo',),
          Tab(icon: Icon(Icons.settings),text: 'Setting',),

        ]),

      ),

      body: TabBarView(
          controller: _tabletController,
          children: [
        // Container(
        //   height: 100, width: 100,
        //   color: Colors.green[100],
        //   child: Center(child: Text('Home')),
        // ),
        // Container(
        //   height: 100, width: 100,
        //   color: Colors.green[100],
        //   child: Center(child: Text('Favo')),
        // ),
        // Container(
        //   height: 100, width: 100,
        //   color: Colors.green[100],
        //   child: Center(child: Text('Setting')),
        //),

            Module_10Class_1(),
            Mod_10_Class_2(),
            Mod_11_Cls_2(),


      ]),

    );
  }
}
