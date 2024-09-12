import 'package:flutter/material.dart';

class gridprep extends StatefulWidget {
  const gridprep({super.key});

  @override
  State<gridprep> createState() => _gridprepState();
}

class _gridprepState extends State<gridprep> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.purple,
      Colors.red,
      Colors.orange,
      Colors.blue,
      Colors.green,
      Colors.brown,
      Colors.pink,
      Colors.blue
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
              children: [
                Container(
                  color: arrColors[0],
                ),
                Container(
                  color: arrColors[1],
                ),
                Container(
                  color: arrColors[2],
                ),
                Container(
                  color: arrColors[3],
                ),
                Container(
                  color: arrColors[4],
                ),
                Container(
                  color: arrColors[5],
                ),
                Container(
                  color: arrColors[6],
                ),
                Container(
                  color: arrColors[7],
                ),
              ],
            ),
          ),

         

          
          SizedBox(
            height: 100,
            child: GridView.extent(maxCrossAxisExtent: 30,
            // mainAxisSpacing: 11,
            // crossAxisSpacing: 11,
            children: [  Container(
                  color: arrColors[0],
                ),
                Container(
                  color: arrColors[1],
                ),
                Container(
                  color: arrColors[2],
                ),
                Container(
                  color: arrColors[3],
                ),
                Container(
                  color: arrColors[4],
                ),
                Container(
                  color: arrColors[5],
                ),
                Container(
                  color: arrColors[6],
                ),
                Container(
                  color: arrColors[7],
                ),],),
          )
        ],
      ),
    );
  }
}
