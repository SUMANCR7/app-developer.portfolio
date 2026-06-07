import 'package:flutter/material.dart';
import 'package:flutter_166/Eid_Practices/mod_11/widget/country_card.dart';

class Custom_Widget extends StatelessWidget {
  const Custom_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text('Custom Widget',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),),
     centerTitle: true,
      ),

      body: Column(
        children: [

          CountryCard(imgUrl:'https://www.andamandaphuket.com/sites/andamanda/files/inline-images/thailand-tourist-attractions-1_0.jpg' ,countryName:'Thailand' ,rating: '4.6',),
          SizedBox(height: 10,),
          CountryCard(imgUrl:'https://oceanjar-new.s3.ap-south-1.amazonaws.com/Maldives_Hotels_23e6c6cb28.png' ,countryName:'Maldivs' ,rating: '4.7',),
          SizedBox(height: 10,),
          CountryCard(imgUrl:'https://priyankatourandtravels.com/wp-content/uploads/2024/12/pokhara-temple-1.jpg' ,countryName:'Nepal' ,rating: '4.8',),
        ],
      ),

    );
  }
}


