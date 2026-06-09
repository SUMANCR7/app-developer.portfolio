import 'package:flutter/material.dart';

class Home_1 extends StatefulWidget {
  final String name;
  final int price;
  final Color paint;
  final VoidCallback onTap;

  const Home_1({super.key, required this.name, required this.price, required this.paint, required this.onTap});

  @override
  State<Home_1> createState() => _Home_1State();
}

class _Home_1State extends State<Home_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[100],
        title: Text('home page (child)'),
      ),
      body: Center(
        child: Card(
          color: widget.paint,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.name,style: TextStyle(fontSize: 30),),
              Text(widget.price.toString(),style: TextStyle(fontSize: 30),),

              ElevatedButton(onPressed: widget.onTap, child: Text('Submit')),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back'))

            ],
          ),
        ),
      ),
    );
  }
}
