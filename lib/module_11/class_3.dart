import 'package:flutter/material.dart';

class Mod_11_Class_3 extends StatelessWidget {
  const Mod_11_Class_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,

        title: Text('Practice-mod11cl3',style: TextStyle(fontSize: 20,color: Colors.white),),
      centerTitle: true,
      ),

      body: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
             mainAxisSpacing: 20,
            crossAxisSpacing: 20,

          ), 
          itemBuilder: (context,index){
            return Card(
              //color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.network('https://static.thenounproject.com/png/598867-200.png',height: 120,),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.red, Colors.orange, Colors.white
                      ])
                    ),
                  ),
                  Text('Cash Out'),
                ],
              ),
            );
          }
      ),
      
      
      // body: GridView.count(
      //     crossAxisCount: 2,
      //         mainAxisSpacing: 15,
      //         crossAxisSpacing: 15,
      //
      //         children: [
      //           Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //                 color: Colors.red
      //             ),
      //             height: 100,
      //               width: 100,
      //
      //           ),
      //           Container(
      //             height: 100,
      //               width: 100,
      //               color: Colors.blue
      //           ),
      //           Container(
      //             height: 100,
      //               width: 100,
      //               color: Colors.green
      //           ),
      //           Container(
      //             height: 100,
      //               width: 100,
      //               color: Colors.blueGrey
      //           ),
      //           Container(
      //             height: 100,
      //               width: 100,
      //               color: Colors.blueAccent
      //           ),
      //           Container(
      //             height: 100,
      //               width: 100,
      //               color: Colors.lime
      //           ),
      //   ],
      //
      // ),


      // body: Column(
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Container(
      //             height: 100,width: 100,
      //             color: Colors.red
      //         ),
      //         //Spacer(),
      //         Container(
      //             height: 100,width: 100,
      //             color: Colors.greenAccent
      //         ),
      //         //Spacer(),
      //         Container(
      //             height: 100,width: 100,
      //             color: Colors.blue
      //         ),
      //         //Spacer(),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
