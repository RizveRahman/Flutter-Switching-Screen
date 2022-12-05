import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdPage())
              );
            }, child: Text('Third Page')),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            },child: const Text("Home"),),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Page'),),
      body: ElevatedButton(onPressed: () {
        Navigator.pop(context);
      }, child: Text('Home')),
    );
  }
}