import 'package:flutter/material.dart';

import 'bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBarScreen(),
    );
  }
}
