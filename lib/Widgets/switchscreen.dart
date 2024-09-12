import 'package:flutter/material.dart';
import 'package:learning/Widgets/wrapwidgett.dart';
// import 'package:learning/gridviewprep.dart';

class inputpage extends StatefulWidget {
  const inputpage({super.key});

  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
      ),
      body: Column(
        children: [
          Text('welcome', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => wraper(),));
          }, child: Text('next'))
        ],
      ),
    );
  }
}