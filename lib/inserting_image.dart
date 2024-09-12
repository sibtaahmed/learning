import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pictures extends StatefulWidget {
  const Pictures({super.key});

  @override
  State<Pictures> createState() => _PicturesState();
}



class _PicturesState extends State<Pictures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
      title: Text('Inserting an Image',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white)))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 500,
              width: 500,
              child:
                  Center(child: Image.asset('assets/images/flutterlogo.png')),
            ),
          ),
        ],
      ),
    );
  }
}
