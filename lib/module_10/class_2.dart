import 'package:flutter/material.dart';

class Mod_10_Class_2 extends StatelessWidget {
  const Mod_10_Class_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('AppBar', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text('Hello World!', style: TextStyle(fontSize: 20),)),

          Align(
              alignment: Alignment.bottomLeft,
              child: Text('Hello Moon!', style: TextStyle(fontSize: 20),)),

          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            
            alignment: Alignment.topRight,
            height: 100, width: 100,
            //color: Colors.blue,
            child: Text('Hello Flutter', style: TextStyle(fontSize: 18),),

            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 5, color: Colors.grey),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              
              gradient: LinearGradient(colors: [Colors.blue, Colors.red],
              begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 10,
                  //offset: Offset(0, 5),
                  blurRadius: 5
                )
              ]

            ),

          )
          
          
        ],
      ),


    );
  }
}
