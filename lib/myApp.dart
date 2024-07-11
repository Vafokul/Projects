import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/ui/Imagesandbuttons.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Flutter lesson 2',
            style: TextStyle(fontSize: 25.0, color: Colors.black),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('Button pressed'),
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: ImagesandButtons(),

      ),
    );
  }
}
