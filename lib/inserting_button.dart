
import 'package:flutter/material.dart';

class Inserting_button extends StatefulWidget {
  const Inserting_button({super.key});

  @override
  State<Inserting_button> createState() => _Inserting_buttonState();
}

class _Inserting_buttonState extends State<Inserting_button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text('Inserting button'),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 56, 73, 196),),
      body: Center(
        child: ElevatedButton(onPressed: (){
        
        }, child: Text('Explore more') ),
      )
    );
  }
}