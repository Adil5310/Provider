import 'package:flutter/material.dart';
import 'package:provider_learning/pages/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Provider',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Myhomepage(),
    );
  }
}

