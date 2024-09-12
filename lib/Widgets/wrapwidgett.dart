import 'package:flutter/material.dart';

class wraper extends StatefulWidget {
  const wraper({super.key});

  @override
  State<wraper> createState() => _wraperState();
}

class _wraperState extends State<wraper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyApp'),),
      body: Container(
        width: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 60,
          runSpacing: 5,
          alignment: WrapAlignment.center,
          children: [
            Container(width: 70,
            height: 70,
            color: Colors.deepPurple,),
            Container(width: 70,
            height: 70,
            color: Color.fromARGB(255, 231, 46, 21),),
            Container(width: 70,
            height: 70,
            color: const Color.fromARGB(255, 58, 183, 58),),
            Container(width: 70,
            height: 70,
            color: const Color.fromARGB(255, 58, 175, 183),),
            Container(width: 70,
            height: 70,
            color: Color.fromARGB(255, 230, 252, 37),),
            Container(width: 70,
            height: 70,
            color: Color.fromARGB(255, 58, 57, 59),),
            Container(width: 70,
            height: 70,
            color: Color.fromARGB(255, 223, 117, 18),),
            Container(width: 70,
            height: 70,
            color: Color.fromARGB(255, 16, 56, 54),),
            Container(width: 70,
            height: 70,
            color: Color.fromARGB(255, 8, 2, 90),),
            Container(width: 70,
            height: 70,
            color: Color.fromARGB(255, 8, 7, 8),),
          ],
        ),
      ),
    );
  }
}