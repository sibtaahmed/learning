import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/bordersprep.dart';

class Richtextprep extends StatefulWidget {
  const Richtextprep({super.key});

  @override
  State<Richtextprep> createState() => _RichtextprepState();
}

class _RichtextprepState extends State<Richtextprep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'RichText',
            style: GoogleFonts.bungee(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 71, 146, 231),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Mypreps(),));
                },
                icon: const Icon(
                  Icons.arrow_right,
                  color: Colors.white70,
                size: 40,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.blue[50],
            child: Column(
              children: [
                RichText(
                    text: TextSpan(
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 70),
                        children: [
                      const TextSpan(text: ('Myself ')),
                      TextSpan(
                          text: 'Ahmad ',
                          style: GoogleFonts.permanentMarker(
                              color: Colors.amber,
                              fontSize: 65,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                      TextSpan(
                          text: 'Sheikh, ',
                          style: GoogleFonts.permanentMarker(
                            color: Colors.green,
                            fontSize: 65,
                            fontWeight: FontWeight.bold,
                          )),
                      const TextSpan(text: 'And Today We '),
                      const TextSpan(
                          text: 'Are ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red)),
                      const TextSpan(text: ('Practicing ')),
                      const TextSpan(
                          text: 'Flutters Dev ',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 60,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic)),
                      const TextSpan(
                          text: '!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red))
                    ])),
              ],
            ),
          ),
        ));
  }
}
