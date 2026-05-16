import 'package:flutter/material.dart';
import 'package:flutter_166/module_11/widget/spot_card.dart';

class CustomWG extends StatelessWidget {
  const CustomWG ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.brown,
  title: Text('Custom_Widget',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
  centerTitle: true,
  ),

      body: Column(
        children: [

           Spot_Card(imageAddressLink:'https://images.pexels.com/photos/33684437/pexels-photo-33684437.jpeg', title: 'Cox\'s Bazar', rating: '4.5',),
          SizedBox(height: 10,),
          Spot_Card(imageAddressLink: 'https://images.pexels.com/photos/17422314/pexels-photo-17422314.jpeg', title: 'Saint Martin', rating: '5',),
          SizedBox(height: 10,),
          Spot_Card(imageAddressLink: 'https://images.pexels.com/photos/13835631/pexels-photo-13835631.jpeg', title: 'Sea', rating: '4.7',),
          SizedBox(height: 10,),
          Spot_Card(imageAddressLink: 'https://images.pexels.com/photos/34991637/pexels-photo-34991637.jpeg', title: 'Sundarbans', rating: '4.8',),

        ],
      ),

  );
  }
}


