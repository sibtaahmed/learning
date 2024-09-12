import 'package:flutter/material.dart';

class userinput extends StatefulWidget {
  const userinput({super.key});

  @override
  State<userinput> createState() => _userinputState();
}

class _userinputState extends State<userinput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(child: SizedBox(
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),borderSide: const BorderSide(color: Colors.red)
              ),
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(11),borderSide: const BorderSide(color: Colors.blueAccent)
              ),
              disabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(11),borderSide: const BorderSide(color: Color.fromARGB(255, 255, 68, 193))
              )
            ),
          ),
          const SizedBox(height: 11,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),borderSide: const BorderSide(color: Colors.red)
              )
            ),
          ),
        ],
      ))),

  



    );
  }
}


