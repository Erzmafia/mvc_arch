import 'package:flutter/material.dart';
import 'package:mvc_arch/Views/View.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVC Pattern',
      home: View(),
    );
  }
}
