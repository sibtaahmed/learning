import 'package:flutter/material.dart';
import 'package:learning/Widgets/basic_calculations.dart';
import 'package:learning/inserting_button.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  var namecontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 58, 58),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(39, 120, 212, 1),
        titleTextStyle: const TextStyle(color: Colors.white),
        title: const Text('Demo APP', style: TextStyle(fontSize: 25),),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Inserting_button(),
                    ));
              },
              icon: const Icon(
                Icons.camera_enhance_sharp,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 330,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Home page',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 244, 241, 236), ),
              ),
              const SizedBox(
                height: 1,
              ),
              TextField(
                controller: namecontroller,
                  style: const TextStyle(color: Colors.white),
              
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => calculator(choosingDate: namecontroller.text,),
                          ));
                    },
                    child: const Text('Explore')),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
