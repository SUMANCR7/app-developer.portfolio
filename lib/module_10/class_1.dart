import 'package:flutter/material.dart';

class Module_10Class_1 extends StatelessWidget {
  const Module_10Class_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Mod-10_Cla-1', style: TextStyle(color: Colors.black,fontSize: 25, fontWeight: FontWeight.bold),),
        centerTitle: true,
        ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              alignment: Alignment.center,
              height: 100, width: 100,
              transform: Matrix4.rotationZ(0.3),
            child: Text('Hlw Somu',style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
               color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 5, color: Colors.green),
                boxShadow: [
                  BoxShadow(color: Colors.black26, offset: Offset(10, 5),blurRadius: 5 )
                ]
              ),
            ),

            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: Colors.black26, offset: Offset(10, 5), blurRadius: 10)
                ]
              ),
              child: Row(
                children: [
                  CircleAvatar(radius: 50, backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLirUPtPIXnPqnwIL2fo0JIk1i4imaXpKOdA&s'), ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dr. Brown', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
                      Text('Nurologist', style: TextStyle(fontSize: 20),),
                    ],

                  ),
                ],
              ),
            ),

          Stack(

            alignment: Alignment.center,
            children: [

              Container(
                width: 200,
                height: 200,
              decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              ),

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
              ),
            ],

          ),
SizedBox(height: 20,),
            Stack(

            alignment: Alignment.center,
            children: [

              Container(
                width: 200,
                height: 200,
              decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              ),

              Positioned(
                top: 10,
                bottom: 10,
                right: 10,
                //left: 10,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],

          ),

          ],
        ),
      ),



    );
  }
}
