import 'package:flutter/material.dart';

class UstawieniaLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ustawienia'),
      ),
      body: Center(
        child: Text(
          'To jest ekran ustawień',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}