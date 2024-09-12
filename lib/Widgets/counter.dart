import 'package:flutter/material.dart';

class counterprep extends StatefulWidget {
  const counterprep({super.key});

  @override
  State<counterprep> createState() => _counterprepState();
}

class _counterprepState extends State<counterprep> {
  var count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful',),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('count: $count',style: const TextStyle(fontSize: 25) ),
            ElevatedButton(onPressed: (){
              count++;
              setState(() {
                
              });
            }, child: const Text('COUNT'))
          ],
        ),
      ),
    );
  }
}




class namo extends StatefulWidget{
   const namo({super.key});

@override
  State<namo> createState() => namoState();
}
 class namoState extends State<namo>{
  @override
 Widget build(BuildContext context){
  return const Placeholder();

 }
 }


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

