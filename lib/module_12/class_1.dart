import 'package:flutter/material.dart';

class Mod_12_Cls_1 extends StatelessWidget {
  const Mod_12_Cls_1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final formKey = GlobalKey <FormState>();


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Mod-12_Cls-1',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
      centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login In Here...!',style: TextStyle(fontSize: 25),),
              SizedBox(height: 30,),

              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  
                  hintText: 'Phone number',
                  labelText: 'Enter your phone number',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check_circle,color: Colors.green,),

                    border: OutlineInputBorder(
                      
                    borderSide: BorderSide(color: Colors.blue),
                  ),

                    filled: true,fillColor: Colors.greenAccent,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,width: 5,
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey,width: 5),
                  ),

                ),

                validator: (myValue){
                  if(myValue == null || myValue.isEmpty){
                    return 'Please enter your number';
                  }else if(myValue == '01743275041'){
                    return 'ok';
                  }else if( myValue != '01743275041'){
                    return 'The number is incorrect';
                  }else{
                    return null;
                  }
                },



              ),

              SizedBox(height: 30,),

              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.green,),

                    border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),

                    filled: true,fillColor: Colors.greenAccent,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,width: 5,
                    )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey,width: 5),
                  ),

                ),

                validator: (myPass){
                  if(myPass == null || myPass.isEmpty){
                    return 'Please enter your password';
                  }else if(myPass.length < 6){
                    return 'The password must be grater than 6 cha';
                  }else if(myPass == 'sstt66'){
                    return 'ok';
                  }else if( myPass != 'sstt66'){
                    return 'The password is wrong';
                  }else{
                    return null;
                  }
                },



              ),

              SizedBox(height: 30,),

              SizedBox(
                height: 50,width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                    ),
                    onPressed: (){
                      if(formKey.currentState!.validate()){}
                    }, child: Text('Submit',style: TextStyle(fontSize: 22,color: Colors.white),)),
              )



            ],
          ),
        ),
      ),
    );
  }
}
