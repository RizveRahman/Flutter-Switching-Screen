import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  var getName;

  SecondPage(this.getName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome $getName', style: TextStyle(fontSize: 25),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                },child: const Text("Home"),),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage())
                  );
                }, child: const Text('Third Page')),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Page'),),
      body: ElevatedButton(onPressed: () {
        Navigator.pop(context);
      }, child: const Text('Home')),
    );
  }
}