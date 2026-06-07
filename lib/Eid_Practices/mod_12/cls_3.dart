import 'package:flutter/material.dart';

class Mod_12_Cls_3 extends StatefulWidget {
  const Mod_12_Cls_3({super.key});

  @override
  State<Mod_12_Cls_3> createState() => _Mod_12_Cls_3State();
}

class _Mod_12_Cls_3State extends State<Mod_12_Cls_3> {
  double scale = 1.0;
  double dx = 0;
  double dy = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        title: Text('Touch & Gesture',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      centerTitle: true,
      ),
      
      body: Column(
        children: [
          Text('Drag / Pan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          
          GestureDetector(
            onPanUpdate: (myValue){
              setState(() {
                dx += myValue.delta.dx;
                dy += myValue.delta.dy;
              });
            },
            child: Transform.translate(
              offset: Offset(dx, dy),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(child: Text('Drag me',style: TextStyle(fontSize: 20,color: Colors.white),)),
              ),
            ),
            
          ),
          
          Text('Horizontal',style: TextStyle(fontSize: 18),),
          
          GestureDetector(
            onHorizontalDragUpdate: (myValue){
              setState(() {
                dx += myValue.delta.dx;
              });
            },
          child: Transform.translate(
            offset: Offset(dx, dy),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red[300],
              child: Center(child: Text('Drag Hr.',style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),
          ),
          ),

          Text('Vertical',style: TextStyle(fontSize: 18),),
          
          GestureDetector(
            
            onVerticalDragUpdate: (myValue){
              setState(() {
                dy += myValue.delta.dy;
              });
            },
          child: Transform.translate(
            offset: Offset(dx, dy),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.orange[400],
              child: Text('Drag Vr',style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
          ),
          ),

          Text('Scale',style: TextStyle(fontSize: 20),),

          GestureDetector(
            onScaleUpdate: (myValue){
              setState(() {
                scale += myValue.scale;
              });
            },
          child: Transform.scale(
            scale: scale,
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green[100],
                child: Center(child: Text('Zoom me',style: TextStyle(fontSize: 20, color: Colors.black),)),
              ),
            ),
          ),
          )
          
        ],
      ),
      
    );
  }
}
