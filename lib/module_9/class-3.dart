import 'package:flutter/material.dart';

class Clss_3 extends StatelessWidget {
  const Clss_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[200],
      //backgroundColor: Colors.grey.withOpacity(0.9),
      backgroundColor: Colors.grey.shade300,

      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Class-3', style: TextStyle(fontSize: 30,),),
          centerTitle: true
      ),

      body: Center(

        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                ) ,
                onPressed: () {}, child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),)),

            SizedBox(
              height: 15,
            ),

            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ) ,
                  onPressed: () {}, child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),)),
            ),
           SizedBox(
             height: 20,
           ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ) ,
                  onPressed: () {}, child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),)),
            ),

            TextButton(onPressed: () {}, child: Text('See More', style: TextStyle(fontSize: 20,),)),

            Icon(Icons.account_circle_sharp, size: 50, color: Colors.blue,),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,size: 100,)),

          ],
        ),
      )

    );
  }
}
