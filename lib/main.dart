import 'package:flutter/material.dart';
// import 'package:learning/Widgets/basic_calculations.dart';
import 'package:learning/splash_scr.dart';
// import 'package:learning/Widgets/basic_calculations.dart';
// import 'package:learning/datepicker.dart';
// import 'package:learning/Widgets/counter.dart';
// import 'package:learning/datepicker.dart';
// import 'package:learning/Widgets/richtext.dart';
// import 'package:learning/Widgets/wrapwidgett.dart';
// import 'package:learning/bordersprep.dart';
// import 'package:learning/datepicker.dart';
// import 'package:learning/gridviewprep.dart';
// import 'package:learning/newbutton.dart';
// import 'package:learning/ListTile_prep.dart';
// import 'package:learning/getuserinput.dart';
// import 'package:learning/home._page.dart';
// import 'package:learning/expended_widgets.dart';
// import 'package:learning/decoration_widget.dart';
// import 'package:learning/listview_prep.dart';
// import 'package:learning/listview_prep.dart';
// import 'package:learning/scrollview_widgets.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:  prep(),
      home:  const splash_screen(
        
      ),

    );
  }
}

