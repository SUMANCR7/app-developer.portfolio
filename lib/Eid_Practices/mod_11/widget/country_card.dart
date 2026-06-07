import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  final imgUrl, countryName, rating;
  const CountryCard({
    super.key, this.imgUrl, this.countryName, this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: ClipRRect(
        child: Stack(
          children: [
            Container(
                height: 400,
                width: 500,
                child: Image.network(imgUrl)),

            Container(
              height: 280,
              color: Colors.transparent,
            ),
            Positioned(
                top: 10,
                left: 20,
                child: Text(countryName,style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),

            Positioned(
                top: 20,
                right: 20,
                child: Text('⭐ ${rating}',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}