
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static Web Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Static Web Page'),
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}