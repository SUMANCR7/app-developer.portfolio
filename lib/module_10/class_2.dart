import 'package:flutter/material.dart';

class Mod_10_Class_2 extends StatelessWidget {
  const Mod_10_Class_2({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.orange,
        title: Text('Media Query', style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      centerTitle: true,
      ),

      body: Column(

        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text('Hello', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),


          Center(child: Text('Hello World!', style:TextStyle(fontStyle: FontStyle.italic,fontSize: 24, fontWeight:FontWeight.bold, color: Colors.red,
          shadows: [Shadow(blurRadius: 2, color: Colors.black12,offset: Offset(4, 4))]
          ),)),

         Align(
             alignment: Alignment.topRight,
             child: Text('Hello Moon!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),)),

        Container(

          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          height: 200,
          width: 200,
          
          child: Text('50% width', style: TextStyle(color: Colors.white, fontSize: 22, ),),
        
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
