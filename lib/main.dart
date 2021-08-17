import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_task/screens/input_screen.dart';

import 'model/inputs.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Color(0xffFAFBFB),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InputScreen(),
    );
  }
}

