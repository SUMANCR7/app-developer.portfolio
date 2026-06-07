import 'package:flutter/material.dart';

class Mod_10_Cls_2 extends StatelessWidget {
  const Mod_10_Cls_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        title: Text('Mod-10_Cls-2',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      ),
      body: Column(
        children: [
          Center(

              child: Text('Hello World',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),)),

          Align(
            alignment: Alignment.topLeft,
              child: Text('Hello World-2',style: TextStyle(fontSize: 25,color: Colors.brown,fontWeight: FontWeight.bold),)),

          SizedBox(height: 40,),

          Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,

            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16)),
              border: Border.all(width: 10,color: Colors.red.shade300),
              boxShadow:[
                BoxShadow(color: Colors.black38,offset:Offset(10, 10),spreadRadius: 2,blurRadius: 10),
              ],

              gradient: LinearGradient(colors: [
                Colors.blue.shade100, Colors.purple.shade100, Colors.red.shade100,
              ],
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),

            ),
            child: Text('Hello Flutter',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
          ),

        ],
      ),
    );
  }
}
