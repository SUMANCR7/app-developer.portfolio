import 'package:flutter/material.dart';

class Spot_Card extends StatelessWidget {
  final String imageAddressLink, title, rating;
  const Spot_Card({
    super.key, required this.imageAddressLink, required this.title, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue,
      child: ClipRRect(
        child: Stack(
          children: [

            Container(
              height: 150,
                width: 500,
                child: Positioned(child: Image.network(imageAddressLink),height: 100,width: 600,)),
            Container(
              height: 150,
              color: Colors.transparent,

            ),
            Positioned(

                top: 10, left: 20,
                child: Text(title,style: TextStyle(fontSize: 18, color: Colors.white),)),
            Positioned(

                top: 10, right: 20,
                child: Text('⭐ ${rating}' ,style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold,))
            ),
                  ],
        ),
      ),
    );
  }
}