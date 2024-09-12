
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learning/home._page.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
   

    @override
  void initState() {
    super.initState();
    // _updateTime(); // Initialize time when the widget is created
    Timer(const Duration(seconds: 2),(){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home_page(),));
    } );
  }

  // void _updateTime() {
  //       Future.delayed(const Duration(seconds: 2), () {
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_page()));
  //   });
  // }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
      color: const Color.fromRGBO(33, 150, 243, 1),

      child: const Center(child: Text('SHEIKHS PRODUCTION', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}