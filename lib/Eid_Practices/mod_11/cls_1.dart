import 'package:flutter/material.dart';

class Mod_11_Cls_1 extends StatelessWidget {
  const Mod_11_Cls_1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    
    TextEditingController passcodeController = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text('Mod_11,cls_1',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://cdn.britannica.com/92/212692-050-D53981F5/labradoodle-dog-stick-running-grass.jpg',height: 280, width: 500,),
            Image.asset('asset/img_3.png',height: 200,width: 200,),
            SizedBox(height: 20,),
        
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                helperText: 'Phone number', helperStyle: TextStyle(fontSize: 20,color: Colors.red,),
              hintText: 'Enter your phone number', hintStyle: TextStyle(fontSize: 19,color: Colors.blue,),
                labelText: 'phone number',labelStyle: TextStyle(fontSize: 21,color: Colors.orange,),
                
                prefixIcon: Icon(Icons.phone,color: Colors.green,),
                suffixIcon: Icon(Icons.check_box),
        
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
        
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passcodeController,
              obscureText: true,

              decoration: InputDecoration(
                helperText: 'Passcode', helperStyle: TextStyle(fontSize: 20,color: Colors.red,),
              hintText: 'Enter your passcode', hintStyle: TextStyle(fontSize: 19,color: Colors.blue,),
                labelText: 'passcode',labelStyle: TextStyle(fontSize: 21,color: Colors.orange,),

                prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                suffixIcon: Icon(Icons.remove_red_eye),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )

              ),
            ),
            
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[200],
                ),

                  onPressed: (){
                  print(phoneController.text);
                  print(passcodeController.text);
                  }, child: Text('Submit',style: TextStyle(fontSize: 20,color: Colors.black),)),
            )

          ],
        ),
      ),
    );
  }
}
