import 'package:flutter/material.dart';

class Module_10Class_1 extends StatelessWidget {
  const Module_10Class_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: Text('Mod-10,Class-1',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
      centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            //1111111111
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),

              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.2),
              
              width: 100,
              height: 100,

              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 5, color: Colors.red),
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(10, 5),blurRadius: 12),
                ]

              ),
              child: Text('Welcome', style: TextStyle(fontSize: 15, color: Colors.white),),
            ),

            SizedBox(height: 20,),

            //222222222
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: Colors.black, blurRadius: 8),
                ]
              ),
              child: Row(
                children: [
                  CircleAvatar(radius: 50, backgroundImage: NetworkImage('https://snibbs.co/cdn/shop/articles/What_are_the_Challenges_of_Being_a_Doctor.jpg?v=1684314843'),),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dr. Robert', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                      Text('Nurologist', style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ],
              ),
            ),

            SizedBox(height: 20,),

            Stack(
              alignment: Alignment.center,
              children: [
                //1111111111
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),
                ),

                //2222222222
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15)),
                )
              ],
            ),

            SizedBox(height: 20,),

            Stack(
              alignment: Alignment.center,
              children: [
                //1111111111
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15)),
                ),

                //2222222222
                Positioned(
                  top: 10,
                  right: 10,
                  bottom: 10,
                  //left: 10,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),
                  ),
                )
              ],
            ),

          ],
        ),
      ),

    );
  }
}
