import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/scrollview_widgets.dart';

class Tileprep extends StatefulWidget {
  const Tileprep({super.key});

  @override
  State<Tileprep> createState() => _TileprepState();
}

class _TileprepState extends State<Tileprep> {
  var arrNames = [
    'AHMED SHEIKH',
    'HUZAFIA',
    'HAMMAD',
    'ZAIN',
    'IBRAHIM',
    'ASFAR',
    'ALEEM',
    'HUZAFIA',
    'HAMMAD',
    'ZAIN',
    'IBRAHIM',
  ];
  var arrImages = [
    'assets/images/ahmeddp.jpg',
    'assets/images/animae.jpeg',
    'assets/images/animae1.jpeg',
    'assets/images/animae.jpeg',
    'assets/images/animae1.jpeg',
    'assets/images/animae.jpeg',
    'assets/images/animae.jpeg',
    'assets/images/animae.jpeg',
    'assets/images/animae1.jpeg',
    'assets/images/animae.jpeg',
    'assets/images/animae.jpeg',
  ];
  var arrSubtitle = [
    'FLUTTER INTERNEE',
    'DEVELOPER',
    'DEVOPS',
    'FLUTTER DEVELOPER',
    'FRONTEND INTERNEE',
    'FULL STACK DEVELOPER',
    'OFFICE BOY',
    'DEVOPS',
    'FLUTTER DEVELOPER',
    'FRONTEND INTERNEE',
    'FULL STACK DEVELOPER',
  ];
  bool _searchBar = false;
  void toggleSearchBar() {
    setState(() {
      _searchBar = !_searchBar;
    });
  }

  get mainfont => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: _searchBar
              ? const TextField()
              : Text(
                  'Whatsapp',
                  style: GoogleFonts.permanentMarker(
                      textStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                ),
          backgroundColor: const Color.fromARGB(221, 41, 129, 189),
          actions: [
            !_searchBar ? Row(
              children: [
                Padding(
              padding: const EdgeInsets.all(1.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: toggleSearchBar,
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.arrow_right,
                color: Colors.white70,
                size: 40,
              ), // Three dots icon
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const prep(),));
                // Action when icon is pressed
              },
            )
              ],
            ) : IconButton(
              onPressed: toggleSearchBar,
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Column(children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  color: const Color.fromARGB(255, 1, 2, 1),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(arrImages[index]),
                    ),
                    title: Text(arrNames[index],
                        style: GoogleFonts.permanentMarker(
                            textStyle: const TextStyle(
                                fontFamily: 'mainfont',
                                fontWeight: FontWeight.w600,
                                color: Colors.yellowAccent))),
                    subtitle: Text(
                      arrSubtitle[index],
                      style: GoogleFonts.robotoMono(color: Colors.white70),
                    ),
                    trailing: const Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]);
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 1,
              );
            },
            itemCount: arrNames.length),
      ),
    );
  }
}
