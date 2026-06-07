import 'package:flutter/material.dart';

class Mod_12_Clss_1 extends StatelessWidget {


  const Mod_12_Clss_1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passcodeController = TextEditingController();

    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        title: Text('Text_Form_Field',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
      centerTitle: true,
      ),

      
      body: Padding(

        padding: const EdgeInsets.all(25),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('LogIn in here...!',style: TextStyle(fontSize: 25),),

              SizedBox(height: 20,),

              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone number', hintStyle: TextStyle(fontSize: 17),
                  labelText: 'Enter your phone number', labelStyle: TextStyle(fontSize: 20),

                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check_circle),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),

                  filled: true,
                  fillColor: Colors.green[100],

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,width: 5,

                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,width: 5,
                    )
                  )

                ),
                validator: (myValue){
                  if(myValue == null || myValue.isEmpty){
                    return 'Please enter your phone number';
                  }
                  else if(myValue.length != 11){
                    return 'Please enter correct phone number';
                  }
                  else if(myValue == '01743275041'){
                    return 'Ok';
                  }else{
                    return null;
                  }
                },
              ),

              SizedBox(height: 20,),

              TextFormField(
                controller: passcodeController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your passcode', helperStyle: TextStyle(fontSize: 17),
                  labelText: 'Passcode', labelStyle: TextStyle(fontSize: 20),

                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,width: 5,
                    )
                  ),
                  filled: true,
                  fillColor: Colors.green[100],

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, width: 5,
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pinkAccent,width: 5,
                    )
                  )

                ),

                validator: (myValue){
                  if(myValue == null || myValue.isEmpty){
                    return 'Please enter passcode';
                  }else if(myValue.length < 6){
                    return 'Password must be greater than six cha';
                  }else if(myValue == 'ttttyy'){
                    return 'OK';
                  }else{
                    return null;
                  }
                },
              ),

              SizedBox(height: 20,),

              SizedBox(
                height: 50,
                width: 200,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[100],
                    foregroundColor: Colors.black,
                  ),
                    onPressed: (){
                    if (formKey.currentState!.validate());
                    }, child: Text('Submit',style: TextStyle(fontSize: 20),)),
              ),


            ],
          ),
        ),
      ),
      
    );
  }
}
