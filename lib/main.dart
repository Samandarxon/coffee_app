import 'package:coffee_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List category = ["Espresso", "Latte", "Cappuccino", "Cafetière"];
  List images = ["assets/images/5.png", "assets/images/6.png"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
