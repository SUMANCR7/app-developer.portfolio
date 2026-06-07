import 'package:flutter/material.dart';

class Mod_10_Cls_1 extends StatelessWidget {
  const Mod_10_Cls_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text('Mod-10,Cls-1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
      centerTitle: true,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              transform: Matrix4.rotationZ(0.2),
              alignment: Alignment.center,
              height: 200,
              width: 200,
              child: Text('Hlw Somu',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 5,color: Colors.lightGreen.shade800),
                boxShadow: [
                  BoxShadow(color: Colors.black38,offset: Offset(10, 10),blurRadius: 5)
                ]
              ),
            ),
            SizedBox(height: 50,),

            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: Colors.black38,offset: Offset(5, 10),blurRadius: 5)
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/028/287/384/small/a-mature-indian-male-doctor-on-a-white-background-ai-generated-photo.jpg'),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text('Dr. Shetti',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600),),
                    Text('Medicine',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                    ],
                  )
                ],

              ),
            ),
            SizedBox(height: 20,),

            Stack(
              children: [
                
                Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                    color: Colors.brown[200],
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  //bottom: 5,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.blueGrey[600],

                  ),
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}
