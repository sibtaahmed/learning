import 'package:flutter/material.dart';
import 'package:learning/Widgets/rounded_btn.dart';
// import 'package:learning/Widgets/rounded_btn.dart';

// class mybutton extends StatefulWidget {
//   const mybutton({super.key});

//   @override
//   State<mybutton> createState() => _mybuttonState();
// }

// class _mybuttonState extends State<mybutton> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Center(
//         child: Container(
//           width: 130,
//           child: RoundedButton(btnName: 'login', bgColor: Colors.blue, icon: Icon(Icons.lock), callback: (){
//             print('clicked');
//           }, textStyle: TextStyle(fontSize: 25)
//               ),
//         ),
//       ));
//   }
// }

class mybutton extends StatefulWidget {
  const mybutton({super.key});

  @override
  State<mybutton> createState() => _mybuttonState();
}

class _mybuttonState extends State<mybutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 60,
              child: RoundedButton(
                btnName: 'Login',
                bgColor: Colors.brown,
                icon: Icon(
                  Icons.lock,
                  color: Colors.green,
                ),
                callback: () {
                  print('You clicked the button');
                },
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              width: 130,
              height: 60,
              child: RoundedButton(
                btnName: 'Press',
                bgColor: const Color.fromARGB(255, 231, 85, 31),
                callback: () {
                  print('You clicked the button');
                },
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
