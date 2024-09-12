import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {


// var arrNames = ['ali', 'akram', 'asfar','zain','ahmad', 'aleem', 'huzafia', 'hamaad'];

// return Scaffold(
//   body: SafeArea(
//     child: ListView.builder(itemBuilder: (context, index){
//     return Text(arrNames[index], style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w300),);
//     },
//     itemCount: arrNames.length,
//     itemExtent: 120,
//     scrollDirection: Axis.horizontal,
//     ),
//   )
// );


// -listView separated-:
    var arrnames = ['ali', 'akram', 'aslam', 'awais'];
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(itemBuilder: (context, index) {
         return Row(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrnames[index] ,style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
              ),
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(arrnames[index] ,style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),),
          ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(arrnames[index] ,style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
          )
         ],);
        },
        itemCount: arrnames.length,
        separatorBuilder:(context, index){
          return Divider(height: 100, thickness:4,);
        },
      )));
        
        
        //  child: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('ahmad', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('hassan', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Muaz', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Yousaf', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('jhangir', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),),
        //     )
        //   ],
        // ),
   
  }
}