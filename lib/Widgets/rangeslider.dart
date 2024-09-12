import 'package:flutter/material.dart';

class slidebar extends StatefulWidget {
  const slidebar({super.key});

  @override
  State<slidebar> createState() => _slidebarState();
}

class _slidebarState extends State<slidebar> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "SLIDERBAR",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: RangeSlider(
                values: values,
                labels: labels,
                divisions: 10,
                activeColor: Colors.red,
                inactiveColor: Colors.amber,
                min: 0,
                max: 100,
                onChanged: (newValue) {
                  values = newValue;
                  setState(() {
            
                  });
                }),
          )),
    );
  }
}
