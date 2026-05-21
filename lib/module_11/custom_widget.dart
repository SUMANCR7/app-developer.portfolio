import 'package:flutter/material.dart';
import 'package:flutter_166/module_11/widget/spot_card.dart';

class CustomWG extends StatelessWidget {
  const CustomWG({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Custom_Widget',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
      centerTitle: true,
      ),
      
      body: Column(
        children: [

          spot_card(imageURL: 'https://images.pexels.com/photos/28969345/pexels-photo-28969345.jpeg', title: 'Thailand', rating: '4.5',),
          SizedBox(height: 10,),
          spot_card(imageURL: 'https://images.pexels.com/photos/14095456/pexels-photo-14095456.jpeg', title: 'Nepal', rating: '4.6',),
          SizedBox(height: 10,),
          spot_card(imageURL: 'https://images.pexels.com/photos/29289151/pexels-photo-29289151.jpeg', title: 'Maldiv', rating: '4.7',),

        ],
      ),
      
    );
  }
}


