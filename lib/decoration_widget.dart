
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Techzaad',),
      ),
      body: Container(
      width:double.infinity,
      height: double.infinity ,
        color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
               color: Colors.brown.shade500,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            border: Border.all(width: 2, color: Colors.green.shade400),
             
            ))
          ),
        ),
      );    
  }
}


