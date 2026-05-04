import 'package:flutter/material.dart';

class Mod_10_Class_2 extends StatelessWidget {
  const Mod_10_Class_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('AppBar', style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      centerTitle: true,
      ),

      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text('Hello World!', style:TextStyle(fontSize: 24, fontWeight:FontWeight.bold, color: Colors.red),)),

         Align(
             alignment: Alignment.topRight,
             child: Text('Hello Moon!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),)),

        Container(

          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          height: 150,
          width: 150,
          
          child: Text('Hello flutter', style: TextStyle(color: Colors.white, fontSize: 22, ),),
        
          decoration: BoxDecoration(

            gradient: LinearGradient(colors: [Colors.green, Colors.blue],
            begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),

          color: Colors.green,
          border: Border.all(width: 5, color: Colors.red),
          borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
            boxShadow: [
              BoxShadow(color: Colors.black,
                  offset: Offset(10, 0),blurRadius: 15)
            ]
        ),
        ),

        ],
      ),
    );
  }
}
