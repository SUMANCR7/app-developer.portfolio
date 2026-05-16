import 'package:flutter/material.dart';

class Mod_11_Class_3 extends StatelessWidget {
  const Mod_11_Class_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Mod11clss3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
      centerTitle: true,
      ),


      body: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 100,
            mainAxisSpacing: 30,
          ),

          itemBuilder: (context, index){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
                 child:Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Image.network('https://static.thenounproject.com/png/598867-200.png',height: 50,),
                 ),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   gradient: LinearGradient(colors: [
                     Colors.red, Colors.deepOrangeAccent, Colors.white
                   ]),
                 ),

               ),
                Text('Cash Out',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            );
          }
      ),



      // body: GridView.count(
      //     crossAxisCount: 3,
      //    crossAxisSpacing: 10,
      //    mainAxisSpacing: 10,
      //    children: [
      //      Container(color: Colors.green,),
      //      Container(color: Colors.red,),
      //      Container(color: Colors.greenAccent,),
      //      Container(color: Colors.purple,),
      //      Container(color: Colors.blue,),
      //      Container(color: Colors.orange,),
      //      Container(color: Colors.blueGrey,),
      //      Container(color: Colors.amber,),
      //      Container(color: Colors.amber[400],),
      //
      //   ],
      // ),


      // body: Column(
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         //Spacer(),
      //         Container(
      //           height: 100,width: 100,
      //           color: Colors.red,
      //         ),
      //         //Spacer(),
      //         Container(
      //           height: 100,width: 100,
      //           color: Colors.green,
      //         ),
      //         //Spacer(),
      //         Container(
      //           height: 100,width: 100,
      //           color: Colors.purple,
      //         ),
      //         //Spacer(),
      //       ],
      //     )
      //
      //   ],
      // ),
    );
  }
}
