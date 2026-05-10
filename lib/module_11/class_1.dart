import 'package:flutter/material.dart';

class Mod_11_Class_1 extends StatelessWidget {
  const Mod_11_Class_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Mod-11Cls-1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            //Network Image
        
            Image.network('https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cmVzb3J0fGVufDB8fDB8fHww',
            //height: 200,
            ),
        
            //Asset Image
        
             Image.asset('asset/img_1.png',height: 150,),
        
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                helperText: 'Phone number',
                hintText: 'Enter your phone number',
                labelText: 'Phone number',
        
        
                helperStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),
                labelStyle: TextStyle(color: Colors.blue),
                hintStyle: TextStyle(fontSize: 20),
        
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check_box),
        
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
        
                ),
        
              ),
        
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                helperText: 'Password',
                hintText: 'Enter your password',
                labelText: 'Password',



                helperStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),
                labelStyle: TextStyle(color: Colors.blue),
                hintStyle: TextStyle(fontSize: 20),

                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.remove_red_eye),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),

                ),

              ),

            ),

          ],
        ),
      ),
      
    );
  }
}
