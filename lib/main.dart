import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffe_Shop_Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PlusJakarta'),
      home: const HomeScreen(),
    );
  }
}