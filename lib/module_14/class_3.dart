import 'package:flutter/material.dart';

class Module_14_Class_3 extends StatefulWidget {
  const Module_14_Class_3({super.key});

  @override
  State<Module_14_Class_3> createState() => _Module_14_Class_3State();
}

class _Module_14_Class_3State extends State<Module_14_Class_3> {
  void showAlertDialog(){

    showDialog(
        barrierDismissible: false,
        context: context, builder: (context)=>AlertDialog(
      title: Text('This is title'),
      content: Text('Are you sure...?'),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Cancel')),
        ElevatedButton(onPressed: (){}, child: Text('Submit')),

      ],
    ));
    
  }

  void showAlertDialogWithIcon(){

    showDialog(
        barrierDismissible: false,
        context: context, builder: (context)=>AlertDialog(
      title: Text('This is title'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.warning,color: Colors.red,size: 40,),
              SizedBox(width: 5,),
              Text('Warning')
            ],
          ),
          SizedBox(height: 10,),
          Text('A short paragraph is a focused block of text, usually 3 to 5 sentences long, designed to explore a single specific idea. It typically features an opening topic sentence, supporting details in the middle, and a concluding statement to wrap up the thought.',style: TextStyle(color: Colors.grey),)
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Cancel')),
        ElevatedButton(onPressed: (){}, child: Text('Submit')),

      ],
    ));

  }

  void showSimpleDialog(){
    showDialog(context: context, builder:(context)=> SimpleDialog(
      title: Text('Simple Dialog'),
      children: [
        SimpleDialogOption(
          child: Text('Option-1'),
        ),
        SimpleDialogOption(
          child: TextField(),
        )
      ],
    ));
  }

  void showBottomSheet(){
    showModalBottomSheet(context: context, builder:(context)=> Container(
      child: Column(
        children: [
          Text('Choose Option',style: TextStyle(fontSize: 10),),
          ListTile(
            title: Text('Option-1'),
          ),
          ListTile(
            title: Text('Option-1'),
          ),
          ListTile(
            title: Text('Option-1'),
          ),
        ],
      ),
     
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog',style: TextStyle(fontSize: 25, fontWeight: .bold),),
        centerTitle: true,
        backgroundColor: Colors.orange[100],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialog();

            }, child: Text('Alert Dialog')),
            ElevatedButton(onPressed: (){
              showAlertDialogWithIcon();

            }, child: Text('Alert Dialog with icon')),
            ElevatedButton(onPressed: (){
              showSimpleDialog();

            }, child: Text('Simple Dialog')),
            ElevatedButton(onPressed: (){
              showBottomSheet();

            }, child: Text('Bottom Sheet')),
          ],
        ),
      ),

    );
  }
}
