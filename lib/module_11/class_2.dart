import 'package:flutter/material.dart';

class Mod_11_Class_2 extends StatelessWidget {
  const Mod_11_Class_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: Text('Mod-11_Class-2'),
      centerTitle: true,
      ),

      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return Card(
              color: Colors.blueGrey[100],
              child: ListTile(
                title: Text('Krishna ${index}'),
                subtitle: Text('123456789...'),
                leading: Icon(Icons.phone,color: Colors.green,),
                trailing: Icon(Icons.delete,color: Colors.black,),
              ),
            );
          }
      ),



      // body: ListView(
      //   children: [
      //     Card(
      //       color: Colors.pink[50],
      //       child: ListTile(
      //         title: Text('Somu'),
      //         subtitle: Text('017777777'),
      //         leading: Icon(Icons.phone,color: Colors.green,),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     )
      //   ],
      // ),

    );
  }
}
