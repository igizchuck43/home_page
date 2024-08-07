import 'package:flutter/material.dart';
import 'package:home_page/home/components/home_details.dart';
import 'package:home_page/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kurinda",
      // home: HomeDetails(),
      home: HomeScreen(),
      // initialRoute: HomeScreen.routeName,
    );
  }
}
