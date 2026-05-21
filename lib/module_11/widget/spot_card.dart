import 'package:flutter/material.dart';

class spot_card extends StatelessWidget {
  final String imageURL, title, rating;
  const spot_card({
    super.key, required this.imageURL, required this.title, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 250,


      child: ClipRRect(
        child: Stack(
          children: [
            Container(
                height: 600, width: 600,
                child: Image.network(imageURL)),
            Container(
              height: 200,
              color: Colors.black12,
            ),
            Positioned(
                top: 10, left: 20,
                child: Text(title,style: TextStyle(fontSize: 20,color: Colors.brown,fontWeight: FontWeight.bold),)),
            Positioned(
                top: 10, right: 20,
                child: Text('⭐ ${rating}',style: TextStyle(fontSize: 20,color: Colors.brown,fontWeight: FontWeight.bold),))

          ],
        ),
      ),
    );
  }
}