import 'package:flutter/material.dart';
import 'package:flutter_166/module_13/pages/about.dart';
import 'package:flutter_166/module_13/pages/home1.dart';

class Module_13_Class_2 extends StatefulWidget {
  const Module_13_Class_2({super.key});

  @override
  State<Module_13_Class_2> createState() => _Module_13_Class_2State();
}

class _Module_13_Class_2State extends State<Module_13_Class_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text('Navigation (Mother)',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_1(name: 'abc product', price: 400, paint: Colors.orange.shade100, onTap: () {  },)));
            }, child: Text('Home1')),
            


            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Saved successfully'))
              );
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>About_Cls()));
            }, child: Text('About')),

            ElevatedButton(onPressed: (){}, child: Text('Test')),

            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/widgetLife');
            }, child: Text('About-2')),
            
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/mod-13cls-2');
            }, child: Text('About-3'))

          ],
        ),
      ),

    );
  }
}

