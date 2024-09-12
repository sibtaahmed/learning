import 'package:flutter/material.dart';
import 'package:learning/datepicker.dart';

class calculator extends StatefulWidget {
  const calculator({super.key, required this.choosingDate});
final String choosingDate;
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var nbr1controller = TextEditingController();
  var nbr2controller = TextEditingController();

   var result = '';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //  extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Basic Calculations', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Color.fromARGB(255, 61, 118, 204),
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 58, 65, 64),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: nbr1controller,
                  style: TextStyle(color: Colors.white),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: nbr2controller,
                  style: TextStyle(color: Colors.white),

                  ),
                   Padding(
                     padding: const EdgeInsets.all(21.0),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){
                          var nbr1 = int.parse(nbr1controller.text.toString());
                          var nbr2 = int.parse(nbr2controller.text.toString());
                                   var sum =nbr1 + nbr2;
                                   result = "The sum of $nbr1 and $nbr2 is $sum";
                                   setState(() {
                                     
                                   });
                        }, child: Text('add')),
                        ElevatedButton(onPressed: (){
                           var nbr1 = int.parse(nbr1controller.text.toString());
                          var nbr2 = int.parse(nbr2controller.text.toString());
                                   var diff =nbr1 - nbr2;
                                   result = "The sum of $nbr1 and $nbr2 is $diff";
                                   setState(() {
                                     
                                   });
                        }, child: Text('sub')),
                        ElevatedButton(onPressed: (){
                            var nbr1 = int.parse(nbr1controller.text.toString());
                          var nbr2 = int.parse(nbr2controller.text.toString());
                                   var mul =nbr1 * nbr2;
                                   result = "The sum of $nbr1 and $nbr2 is ${mul.toStringAsFixed(2)}";
                                   setState(() {
                                     
                                   });
                        }, child: Text('mul')),
                        ElevatedButton(onPressed: (){
                            var nbr1 = int.parse(nbr1controller.text.toString());
                          var nbr2 = int.parse(nbr2controller.text.toString());
                                   var div =nbr1 / nbr2;
                                   result = "The sum of $nbr1 and $nbr2 is ${div.toStringAsFixed(2)}";
                                   setState(() {
                                     
                                   });
                        }, child: Text('div')),
                      ],
                                       ),
                   ),
                   Padding(padding: EdgeInsets.all(21),child: Text(result, style: TextStyle(fontSize: 21),),),
                   ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => flutterdatepick(choosingDate: widget.choosingDate.toString(),),));
          }, child: Text('NEXT >>')),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}