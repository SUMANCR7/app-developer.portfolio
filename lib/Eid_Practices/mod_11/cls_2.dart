import 'package:flutter/material.dart';

class Mod_11_Cls_2 extends StatelessWidget {
  const Mod_11_Cls_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.red[200],
      title: Text('List_View',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
    centerTitle: true,
    ),

     body: ListView.separated(
       itemCount: 10,

         itemBuilder: (context, index){
         return
           Card(
             color: Colors.blue[200],
             child: ListTile(
             title: Text('Bob ${index}'),
             subtitle: Text('0144444444'),
             leading: Icon(Icons.phone),
             trailing: Icon(Icons.delete),
                      ),
           );
         },
         separatorBuilder: (context, index){
         return Divider(
           thickness: 10,
           color: Colors.pink[100],
         );
         },

     ),


      // body: ListView.builder(
      //     itemCount: 10,
      //     itemBuilder: (context, index){
      //       return
      //         Card(
      //           color: Colors.orange[100],
      //           child: ListTile(
      //           title: Text('Alex ${index}'),
      //           subtitle: Text('016666666666'),
      //           leading: Icon(Icons.phone),
      //           trailing: Icon(Icons.delete),
      //                       ),
      //         );
      //     }
      //
      // ),

      // body: ListView(
      //   children: [
      //     Card(
      //       color: Colors.purple[50],
      //       child: ListTile(
      //         title: Text('Somu'),
      //         subtitle: Text('01777777'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     SizedBox(height: 5,),
      //     Card(
      //       color: Colors.purple[50],
      //       child: ListTile(
      //         title: Text('Alex'),
      //         subtitle: Text('019999'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //   ],
      // ),

    );
  }
}
