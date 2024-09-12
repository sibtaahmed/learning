import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/ListTile_prep.dart';

class flutterdatepick extends StatefulWidget {
  final String choosingDate;
  const flutterdatepick({super.key, required this.choosingDate});

  @override
  State<flutterdatepick> createState() => _flutterdatepickState();
}

class _flutterdatepickState extends State<flutterdatepick> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Set status bar color to transparent
      statusBarIconBrightness: Brightness.dark, // Set status bar icon color
    ));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Date Picker',
            style: TextStyle(
                fontSize: 21, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 162, 255),
        ),
        body: Container(
              color: const Color.fromARGB(255, 53, 56, 55),
          child: Column(
      
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('CHOOSE DATE ${widget.choosingDate}',
                      style: GoogleFonts.permanentMarker(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 181, 218, 18)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async {
                      DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1980),
                          lastDate: DateTime(2025));
                
                      if (pickeddate != null) {
                        print(
                            'date selected: ${pickeddate.day}-${pickeddate.month}-${pickeddate.year}');
                      }
                    },
                    child: Text('SHOW DATE')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async {
                      TimeOfDay? pickedtime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.input);
                
                    if(pickedtime!=null){
                      print('Time Selected: ${pickedtime.hour}- ${pickedtime.minute}');
                    }
                
                    },
                    child: Text('SHOW TIME')),
              ),
              SizedBox(height: 480,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context) => Tileprep(),));
                            }, child: Text('NEXT >>')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
