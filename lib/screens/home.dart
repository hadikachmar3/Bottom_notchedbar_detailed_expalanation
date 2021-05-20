import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Home ',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
      ),
    ));
  }
}
