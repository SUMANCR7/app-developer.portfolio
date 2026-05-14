import 'package:flutter/material.dart';

class Mod_11_Class_1 extends StatelessWidget {
  const Mod_11_Class_1({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('AppBar',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
       centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network('https://img.magnific.com/free-photo/beautiful-luxury-outdoor-swimming-pool-hotel-resort_74190-7433.jpg'),
              Image.asset('asset/img_1.png',height: 100,),
          SizedBox(height: 25,),

              //Phone Number
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  helperText: 'Phone number',helperStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),
                  hintText: 'Enter your phone number',hintStyle: TextStyle(fontSize: 20),
                  labelText: 'phone number',labelStyle: TextStyle(color: Colors.blue),
          
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check_box),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
          SizedBox(height: 30,),

              //Password
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  helperText: 'Password',helperStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),
                  hintText: 'Enter your password',hintStyle: TextStyle(fontSize: 20),
                  labelText: 'password',labelStyle: TextStyle(color: Colors.blue),
          
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                
              ),
SizedBox(height: 10,),
              SizedBox(
                  height: 50,width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey[700],
                      ),
                      onPressed: (){

                        print(phoneController.text);
                        print(passwordController.text);

                      }, child: Text('Submit',style: TextStyle(fontSize: 25,color: Colors.white),))),

            ],
          ),
        ),
      ),

    );
  }
}
