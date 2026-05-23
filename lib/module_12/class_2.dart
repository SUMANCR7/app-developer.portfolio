import 'package:flutter/material.dart';

class Mod_12_Cls_2 extends StatefulWidget {
  const Mod_12_Cls_2({super.key});

  @override
  State<Mod_12_Cls_2> createState() => _Mod_12_Cls_2State();
}

class _Mod_12_Cls_2State extends State<Mod_12_Cls_2> {
  bool somu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('Mod-12_Cls-2',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(steps: [
              Step(title: Text('Address'), content:
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter address'
                ),
              )
              ),
              Step(title: Text('Payment'), content:
              TextField(
                decoration: InputDecoration(
                  hintText: 'Select payment method'
                ),
              )
              ),
              Step(title: Text('Confirm'), content:
              TextField(
                decoration: InputDecoration(
                  hintText: 'Review and place order'
                ),
              )
              ),
            ]),
            
            // Stepper(
            //     connectorColor: MaterialStateProperty.all(Colors.green),
            //     currentStep: 3,
            //     steps: [
            //   Step(title: Text('Order place'), content: SizedBox()),
            //   Step(title: Text('Order Confirmed'), content: SizedBox()),
            //   Step(title: Text('Processing'), content: SizedBox()),
            //   Step(title: Text('Delivered'), content: SizedBox()),
            // ]),
        
            InkWell(
              onTap: (){
                setState(() {
                  somu = !somu;
                });
              },
              child: AnimatedContainer(duration: Duration(seconds: 3),
              width: 200,
                height: somu? 300:200,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                setState(() {
                  somu = !somu;
                });
              },
              child: Container(
              width: 200,
                height: somu? 300:200,
             decoration: BoxDecoration(
              color: Colors.green,
    ),
    ),
    ),

            SizedBox(height: 10,),

            AnimatedOpacity(opacity: somu? 1:0, duration: Duration(seconds: 2),
            child: Card(
                  color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hello', style: TextStyle(fontSize: 25),),
              ),
            ),
            ),


            TweenAnimationBuilder(tween: Tween<double>(begin: 0, end: 1500),
                duration: Duration(seconds: 3),
                builder: (context, value, child){
              return Text('৳ ${value.toInt()}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green),);
                }
            ),

            TweenAnimationBuilder<double>(tween: Tween(begin: 0, end: 0.7),
                duration: Duration(seconds: 3),
                builder: (context, valaue,child){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: LinearProgressIndicator(value: valaue, minHeight: 10,),
              );
                }
            ),
            
            AnimatedAlign(alignment: somu? Alignment.topRight: Alignment.centerLeft,
                duration: Duration(seconds: 4),
              child: Image.network('https://t3.ftcdn.net/jpg/05/83/04/44/360_F_583044458_ZOx8uOu2pXLvXRGwJYG0JyR6nlG405Uc.jpg',height: 60,),
            ),



          ],
        ),
      ),

    );
  }
}
