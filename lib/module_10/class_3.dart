import 'package:flutter/material.dart';

class Mod_10_Class_3 extends StatelessWidget {
  const Mod_10_Class_3({super.key});

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;

    double ScreenWidth = ScreenSize.width;
    double ScreenHeight = ScreenSize.height;

    final Orientation orientation_1 = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Class-3'),
        centerTitle: true,
      ),

      body: Center(
        //Condition                      Condition                    condition
        child: orientation_1 == Orientation.portrait? Column(

          children: [
            
            Text(orientation_1.toString(),style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

            Container(
              height: 100,
              width: 200,
              child: Text('Hello,You can find many more design systems created by the Flutter community on pub.dev, the package repository for Dart and Flutter. For example, the Windows-inspired fluent_ui, macOS-inspired macos_ui, and the Ubuntu-inspired yaru widgets.', style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),

            RichText(text: TextSpan(
              text: ' Dont have account?',style: TextStyle(fontSize: 20,color: Colors.black),
              children: [
                TextSpan(
                  text: ' Sign Up',style: TextStyle(fontSize: 25, color: Colors.green),
                )
              ]

            )),

            RichText(text: TextSpan(
              text:' khfklshglkdhgldkhHi', style: TextStyle(fontSize: 20, color: Colors.black),
              children: [
                TextSpan(
                  text: ' Somu',style: TextStyle(fontSize: 30, color: Colors.green),
                )
              ]
            )),

            Text('Without MQ',style: TextStyle(fontSize: 25),),
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),

            SizedBox(height: 20,),

            Container(
              width: ScreenWidth*0.3,
              height: ScreenHeight*0.17,
              color: Colors.green,
            ),


            Text('With MQ', style: TextStyle(fontSize: ScreenWidth*0.05),),

          ],
        ) : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(

            children: [

              Text(orientation_1.toString(),style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

              Container(
                height: 100,
                width: 200,
                child: Text('Hello,You can find many more design systems created by the Flutter community on pub.dev, the package repository for Dart and Flutter. For example, the Windows-inspired fluent_ui, macOS-inspired macos_ui, and the Ubuntu-inspired yaru widgets.', style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),

              RichText(text: TextSpan(
                  text: ' Dont have account?',style: TextStyle(fontSize: 20,color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Sign Up',style: TextStyle(fontSize: 25, color: Colors.green),
                    )
                  ]

              )),

              RichText(text: TextSpan(
                  text:' khfklshglkdhgldkhHi', style: TextStyle(fontSize: 20, color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Somu',style: TextStyle(fontSize: 30, color: Colors.green),
                    )
                  ]
              )),

              Text('Without MQ',style: TextStyle(fontSize: 25),),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
              SizedBox(height: 20,),


              Container(
                width: ScreenWidth*0.3,
                height: ScreenHeight*0.17,
                color: Colors.green,
              ),


              Text('With MQ', style: TextStyle(fontSize: ScreenWidth*0.05),),

            ],
          ),
        ),
      ),
    );
  }
}
