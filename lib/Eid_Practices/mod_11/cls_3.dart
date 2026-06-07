import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        title: Text('Grid',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
      centerTitle: true,
      ),

      body: GridView.builder(
        itemCount: 18,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,

          ),

          itemBuilder: (context, index){
            return Card(
              color: Colors.blue[100],
              child: Column(
                children: [
                  //Icon(Icons.phone),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Colors.red, Colors.pinkAccent,
                      ])
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network('https://cdn-icons-png.flaticon.com/512/1067/1067382.png',height: 90,width: 120,),
                    ),
                  ),
                  Text('Cash Out',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            );
          }
      ),


      // body: GridView.count(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //
      //   children: [
      //     Container(
      //       color: Colors.red[200],
      //     ),
      //     Container(
      //       color: Colors.green[200],
      //
      //     ),
      //     Container(
      //       color: Colors.purple[100],
      //     ),
      //     Container(
      //       color: Colors.blue[300],
      //     ),
      //     Container(
      //       color: Colors.orange[200],
      //     ),
      //     Container(
      //       color: Colors.pink[300],
      //     ),
      //
      //   ],
      //
      // ),
    );
  }
}
