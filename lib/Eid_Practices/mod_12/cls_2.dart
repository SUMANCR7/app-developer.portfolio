import 'package:flutter/material.dart';

class Mod_12_Clss_2 extends StatefulWidget {
  const Mod_12_Clss_2({super.key});

  @override
  State<Mod_12_Clss_2> createState() => _Mod_12_Clss_2State();
}

class _Mod_12_Clss_2State extends State<Mod_12_Clss_2> {
  bool Isexpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text('Basic_Animation',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
     centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            // Stepper(steps: [
            //   Step(title: Text('Address',style: TextStyle(fontSize: 17),),
            //       content:
            //   TextField(
            //     decoration: InputDecoration(
            //       hintText: 'Enter Address',
            //     ),
            //   )
            //   ),
            //   Step(title: Text('Payment',style: TextStyle(fontSize: 17),),
            //       content:
            //   TextField(
            //     decoration: InputDecoration(
            //       hintText: 'Choose payment method',
            //     ),
            //   )
            //   ),
            //   Step(title: Text('Confirm',style: TextStyle(fontSize: 17),),
            //       content:
            //   TextField(
            //     decoration: InputDecoration(
            //       hintText: 'Confirm place order',
            //     ),
            //   )
            //   ),
            // ]),
        
            Stepper(
                connectorColor: MaterialStateProperty.all(Colors.green),
                currentStep: 3,
                steps: [
              Step(title: Text('Order place'), content: SizedBox()),
              Step(title: Text('Order confirmed'), content: SizedBox()),
              Step(title: Text('Processing'), content: SizedBox()),
              Step(title: Text('Deliveried'), content: SizedBox()),
            ]),
        
            InkWell(
              onTap: (){
                setState(() {
                  Isexpanded = !Isexpanded;
                });
              },
              child: AnimatedContainer(duration: Duration(seconds: 3),
              width: 100,
                height: Isexpanded? 250:150,
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                ),
              ),
            ),
            
            AnimatedOpacity(
              opacity: Isexpanded? 1:0, duration: Duration(seconds: 2),
            
              child: Card(
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Hello',style: TextStyle(fontSize: 20),),
                  )),
            ),
            
            TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1500),
                duration: Duration(seconds: 3),
                builder: (context, myValue, index){
                  return Text('৳ ${myValue.toInt()}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green),
        
                  );
                }
            ),

            TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 0.8),
                duration: Duration(seconds: 5),
                builder: (context, myValue,child){
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: LinearProgressIndicator(
                      value: myValue,
                      minHeight: 10,
                    ),
                  );
                }
            ),

            AnimatedAlign(
                alignment: Isexpanded?
                Alignment.topRight : Alignment.centerLeft,
                duration: Duration(seconds: 3),
              
              child: Image.network('https://pics.clipartpng.com/Airplane_PNG_Clipart-421.png',height: 60,width: 150,),

            )
        
          ],
        ),
      ),

    );
  }
}
