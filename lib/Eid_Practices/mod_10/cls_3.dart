import 'package:flutter/material.dart';

class Mod_10_Cls_3 extends StatelessWidget {
  const Mod_10_Cls_3({super.key});

  @override
  Widget build(BuildContext context) {

    Size ScreenSize = MediaQuery.of(context).size;

    double ScreenW = ScreenSize.width;
    double ScreenH = ScreenSize.height;

    final Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text('Mod-10,Cls-3',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
      centerTitle: true,
      ),

      body: Center(

        child: orientation == Orientation.portrait? Column(

          children: [

            Text(orientation.toString(),style: TextStyle(fontSize: 25),),

            Container(
              height: 150,width: 300,
              color: Colors.blue[400],
              child: Text('Hello Flutter In grammar, an article is any of a small set of words or affixes used with nouns to limit or give definiteness to the application. The category of articles constitutes a part of speech. These words represent a specific object,',style:
                TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                ),
            ),

            SizedBox(height: 20,),

            RichText(text: TextSpan(
              text: 'Don\'t have account?',style: TextStyle(
              fontSize: 25,color: Colors.black,
            ),
              children: [
                TextSpan(
                  text: 'Sign Up',style: TextStyle(fontSize: 35,color: Colors.green[800])
                )
              ]
            )),
            SizedBox(height: 10,),

            Text('Without',),
            Container(
              height: 150,
              width: 150,
              color: Colors.red[200],
            ),
            SizedBox(height: 30,),
            Container(
              height: ScreenH*0.16,
              width: ScreenW*0.3,
              color: Colors.green[200],
            ),


            Text('with mediaQuery',style: TextStyle(fontSize: ScreenW*0.04),),

          ],
        ) : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(

            children: [

              Text(orientation.toString(),style: TextStyle(fontSize: 25),),

              Container(
                height: 150,width: 300,
                color: Colors.blue[400],
                child: Text('Hello Flutter In grammar, an article is any of a small set of words or affixes used with nouns to limit or give definiteness to the application. The category of articles constitutes a part of speech. These words represent a specific object,',style:
                TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),

              SizedBox(height: 20,),

              RichText(text: TextSpan(
                  text: 'Don\'t have account?',style: TextStyle(
                fontSize: 25,color: Colors.black,
              ),
                  children: [
                    TextSpan(
                        text: 'Sign Up',style: TextStyle(fontSize: 35,color: Colors.green[800])
                    )
                  ]
              )),
              SizedBox(height: 10,),

              Text('Without',),
              Container(
                height: 150,
                width: 150,
                color: Colors.red[200],
              ),
              SizedBox(height: 30,),
              Container(
                height: ScreenH*0.16,
                width: ScreenW*0.3,
                color: Colors.green[200],
              ),


              Text('with mediaQuery',style: TextStyle(fontSize: ScreenW*0.04),),

            ],
          ),
        ),
      ),

    );
  }
}
