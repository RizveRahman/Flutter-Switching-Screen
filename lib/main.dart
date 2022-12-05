import 'package:flutter/material.dart';
import 'package:switching_screen/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen'),),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('What\'s your name?', style:
              TextStyle(fontWeight: FontWeight.w500, fontSize: 25),),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: nameController,
                ),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage(nameController.text.toString()))
                );
              },child: const Text("Submit", style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
