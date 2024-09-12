import 'package:flutter/material.dart';
import 'package:learning/Widgets/richtext.dart';

class prep extends StatefulWidget {
  const prep({super.key});

  @override
  State<prep> createState() => _prepState();
}

class _prepState extends State<prep> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollView (Horz / Virt)', style: TextStyle( fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
        backgroundColor: Colors.blue,
      actions:[
        IconButton(
              icon: Icon(
                Icons.arrow_right,
                color: Colors.white70,
                size: 40,
              ), // Three dots icon
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Richtextprep(),));
                // Action when icon is pressed
              },
            )
      ]
      ),
      body:SafeArea(
        child: Padding(
                padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
               Padding(
                 padding: const EdgeInsets.only(bottom: 11),
                 child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.lightGreen,
                        margin: EdgeInsets.only(right:11),
               child: Center(child: Text('👈SCROLL LEFT',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800), )),   

                      ),
                      Container(
                        height: 200,
                        width: 200,
                               
                        color: Color.fromARGB(255, 3, 6, 199),
                        margin: EdgeInsets.only(right:11),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                               
                        color: Color.fromARGB(255, 250, 96, 6),
                        margin: EdgeInsets.only(right:11),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                               
                        color: const Color.fromARGB(255, 13, 19, 7),
                        margin: EdgeInsets.only(right:11),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                               
                        color: Color.fromARGB(255, 126, 188, 207),
                        margin: EdgeInsets.only(right:11),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                               
                        color: Color.fromARGB(255, 133, 60, 78),
                        margin: EdgeInsets.only(right:11),
                      ),
                    ],
                               ),
                 ),
               ),
            
            Container(
              height: 200,
              color: Color.fromARGB(255, 221, 74, 6),
              margin: EdgeInsets.only(bottom:11),
               child: Center(child: Text('🔝SCROLL UP',style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800), )),   
            ),
            Container(
              height: 200,
              color: Color.fromARGB(255, 216, 14, 132),
              margin: EdgeInsets.only(bottom:11),
                  
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 9, 15, 1),
              margin: EdgeInsets.only(bottom:11),
                  
            ),
            Container(
              height: 200,
              color: Color.fromARGB(255, 191, 98, 209),
              margin: EdgeInsets.only(bottom:11),
                  
            ),
            Container(
              height: 200,
              color: Color.fromARGB(255, 21, 178, 250),
              margin: EdgeInsets.only(bottom:11),
                  
            ),
            Container(
              height: 200,
              color: Color.fromARGB(255, 54, 11, 153),
              margin: EdgeInsets.only(bottom:11),
                  
            ),
            Container(
              height: 200,
              color: Color.fromARGB(255, 243, 101, 19),
              margin: EdgeInsets.only(bottom:11),
        
            ),
            Container(
              height: 200,
              color: Color.fromARGB(255, 27, 226, 77),
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}