import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width using MediaQuery
    

    return SafeArea(
      child: Row(
        children: [
          Container(
          height: MediaQuery.of(context).size.height,
          width: 100,
           // Adjust the height as needed
          color: Colors.blue,
                    ),
                      Container(
          height: MediaQuery.of(context).size.height,
          width: 100,
           // Adjust the height as needed
          color: Colors.green,
                    ),
                     Container(
          height: MediaQuery.of(context).size.height,
          width: 100,
           // Adjust the height as needed
          color: Colors.yellow,
                    ),
                     Container(
          height: MediaQuery.of(context).size.height,
          width: 100,
           // Adjust the height as needed
          color: const Color.fromARGB(255, 14, 21, 27),
                    ),
                     
                   
        ],
      ),
    );
  }
}
