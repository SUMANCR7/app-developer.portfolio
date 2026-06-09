import 'package:flutter/material.dart';

class About_Cls extends StatefulWidget {
  const About_Cls({super.key});

  @override
  State<About_Cls> createState() => _About_ClsState();
}

class _About_ClsState extends State<About_Cls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text('About page(child)'),
      ),
    );
  }
}
