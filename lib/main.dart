import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripzy/pages/home.dart';
import 'package:tripzy/pages/landing.dart';
import 'package:tripzy/widgets/customButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double parentWidth = MediaQuery.of(context).size.width;
    double parentHeight = MediaQuery.of(context).size.height;
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: LandingPage()
        body: HomePage(),
      )
    );
  }
}
