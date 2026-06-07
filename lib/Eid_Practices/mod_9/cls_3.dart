import 'package:flutter/material.dart';

class Mod_9_Cls_3 extends StatelessWidget {
  const Mod_9_Cls_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[300],
      //backgroundColor: Colors.grey.withOpacity(0.9),
      backgroundColor: Colors.grey.shade300,

      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text('Mod-9_Cls-3',style:TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 50,width: 400,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[100],
                  ) ,
                  onPressed: (){}, child: Text('Elevated btn',style: TextStyle(fontSize: 20,color: Colors.black),)),
            ),

            SizedBox(height: 20,),

            SizedBox(
              height: 50,
              width: 350,
              child: OutlinedButton(
                style:OutlinedButton.styleFrom(
                  backgroundColor: Colors.green[100],
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ) ,

                  onPressed: (){}, child: Text('Outline btn',style: TextStyle(fontSize: 20,),)),
            ),

            SizedBox(height: 20,),

            SizedBox(
              height: 50,
              width: 250,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange[100],
                  ),
                  onPressed: (){}, child: Text('Text btn..see more...',style: TextStyle(fontSize: 20,color: Colors.black),)),
            ),

            SizedBox(height: 20,),
            
            Icon(Icons.account_circle_sharp,size: 80, color: Colors.grey[600],),
            SizedBox(height: 5,),
            
            IconButton(
                highlightColor: Colors.blue[100],
                onPressed: (){}, icon:Icon(Icons.delete,size: 75,color: Colors.red[300],)),

            GestureDetector(
                onTap: (){
                  print('on tap');
                },

                onDoubleTap: (){
                  print('double tap');
                },

                onLongPress: (){
                  print('on long press');
                },
                child: Text('Test-1',style: TextStyle(fontSize: 25),)),
            SizedBox(height: 10,),

            InkWell(highlightColor: Colors.blue[100],
                onTap: (){
                  print('on tap');
                },
                onDoubleTap: (){
                  print('double tap');
                },
                onLongPress: (){
                  print('on long press');
                },
                child: Text('Test-2',style: TextStyle(fontSize: 25),)),
            
          ],
        ),
      ),

      floatingActionButton: SizedBox(
        height: 70,width: 70,
        child: FloatingActionButton(

          backgroundColor: Colors.pink[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: (){},
        child: Icon(Icons.add,size: 40,color: Colors.black,
        ), ),
      )
    );
  }
}
